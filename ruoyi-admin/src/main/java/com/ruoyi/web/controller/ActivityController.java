package com.ruoyi.web.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.system.domain.Resource;
import com.ruoyi.system.domain.ResourceState;
import com.ruoyi.system.service.IResourceService;
import com.ruoyi.system.service.IResourceStateService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.config.enums.BusinessType;
import com.ruoyi.system.domain.Activity;
import com.ruoyi.system.service.IActivityService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

import static org.apache.naming.SelectorContext.prefix;

/**
 * 活动管理Controller
 * 
 * @author ruoyi
 * @date 2024-05-27
 */
@RestController
@RequestMapping("/system/activity")
public class ActivityController extends BaseController
{
    @Autowired
    private IActivityService activityService;

    @Autowired
    private IResourceStateService resourceStateService;

    @Autowired
    private IResourceService resourceService;

    /**
     * 查询活动管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:activity:list')")
    @GetMapping("/list")
    public TableDataInfo list(Activity activity)
    {
        startPage();
        List<Activity> list = activityService.selectActivityList(activity);
        return getDataTable(list);
    }

    /**
     * 导出活动管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:activity:export')")
    @Log(title = "活动管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Activity activity)
    {
        List<Activity> list = activityService.selectActivityList(activity);
        ExcelUtil<Activity> util = new ExcelUtil<Activity>(Activity.class);
        util.exportExcel(response, list, "活动管理数据");
    }

    /**
     * 获取活动管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:activity:query')")
    @GetMapping(value = "/{activityId}")
    public AjaxResult getInfo(@PathVariable("activityId") Long activityId)
    {
        return success(activityService.selectActivityByActivityId(activityId));
    }

    /**
     * 获取活动管理详细信息单个
     */
    @PreAuthorize("@ss.hasPermi('system:activity:query')")
    @GetMapping(value = "/one/{activityId}")
    public AjaxResult getInfoOne(@PathVariable("activityId") Long activityId)
    {
        return success(activityService.selectActivityByActivityIdOne(activityId));
    }

    /**
     * 新增活动管理
     */
    @PreAuthorize("@ss.hasPermi('system:activity:add')")
    @Log(title = "活动管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Activity activity)
    {
        Resource resource;
        resource=resourceService.selectResourceByResourceId(activity.getResourceId());
        if(resource==null){
            return AjaxResult.error("资源不存在");
        }

        if(isTimeConflict(activity)){
            return AjaxResult.error("活动时间段与已有活动发生冲突");
        }

        return toAjax(activityService.insertActivity(activity));
    }

    /**
     * 新增活动查询时间冲突
     */
    private boolean isTimeConflict(Activity activity) {
        ResourceState resourceState = new ResourceState();
        resourceState.setResourceId(activity.getResourceId());
        // 查询活动时间段是否与已有活动发生冲突
        List<ResourceState> existingTimes = resourceStateService.selectResourceStateList(resourceState);
        for(ResourceState existingTime : existingTimes){
            if (activity.getProcessTime().before(existingTime.getEndDate()) && activity.getFinishTime().after(existingTime.getStartDate())) {
                return true;
            }
        }


        return false;
    }


    /**
     * 修改活动管理
     */
    @PreAuthorize("@ss.hasPermi('system:activity:edit')")
    @Log(title = "活动管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Activity activity)
    {
        Resource resource;
        resource=resourceService.selectResourceByResourceId(activity.getResourceId());
        if(resource==null){
            return AjaxResult.error("资源不存在");
        }
        if(isTimeConflictUpdate(activity)){
            return AjaxResult.error("活动时间段与已有活动发生冲突");
        }
        //构建一个新的资源状态
        ResourceState resourceState = new ResourceState();
        resourceState.setResourceId(activity.getResourceId());
        resourceState.setActivityId(activity.getActivityId());
        // 活动ID和资源ID查询资源状态ID（应该是唯一）！！！！！！！！！！
        List<ResourceState> resourceStates=resourceStateService.selectResourceStateList(resourceState);
        resourceState.setStartDate(activity.getProcessTime());
        resourceState.setEndDate(activity.getFinishTime());
        resourceState.setId(resourceStates.get(0).getId());
        // 更新资源状态及预约时间
        resourceStateService.updateResourceState(resourceState);
        return toAjax(activityService.updateActivity(activity));
    }

    /**
     * 修改活动管理（纯）
     */
    @PreAuthorize("@ss.hasPermi('system:activity:edit')")
    @Log(title = "活动管理", businessType = BusinessType.UPDATE)
    @PutMapping("/pure")
    public AjaxResult editpure(@RequestBody Activity activity)
    {

        return toAjax(activityService.updateActivity(activity));
    }

    /**
     * 修改活动查询时间冲突
     */
    private boolean isTimeConflictUpdate(Activity activity) {
        ResourceState resourceState = new ResourceState();
        resourceState.setResourceId(activity.getResourceId());
        // 查询活动时间段是否与已有活动发生冲突
        List<ResourceState> existingTimes = resourceStateService.selectResourceStateList(resourceState);
        for(ResourceState existingTime : existingTimes){
            if(existingTime.getActivityId()!=activity.getActivityId()){
                if (activity.getProcessTime().before(existingTime.getEndDate()) && activity.getFinishTime().after(existingTime.getStartDate())) {
                    return true;
                }
            }
        }

        return false;
    }


    /**
     * 删除活动管理
     */
    @PreAuthorize("@ss.hasPermi('system:activity:remove')")
    @Log(title = "活动管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{activityIds}")
    public AjaxResult remove(@PathVariable Long[] activityIds)
    {
        return toAjax(activityService.deleteActivityByActivityIds(activityIds));
    }


}
