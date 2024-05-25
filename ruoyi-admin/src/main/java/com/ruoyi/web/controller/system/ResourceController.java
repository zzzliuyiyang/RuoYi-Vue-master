package com.ruoyi.web.controller.system;

import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.utils.SecurityUtils;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
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
import com.ruoyi.system.domain.Resource;
import com.ruoyi.system.service.IResourceService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 活动资源;活动资源Controller
 * 
 * @author ruoyi
 * @date 2024-05-26
 */
@RestController
@RequestMapping("/system/resource")
public class ResourceController extends BaseController
{
    @Autowired
    private IResourceService resourceService;

    /**
     * 查询活动资源;活动资源列表
     */
    @PreAuthorize("@ss.hasPermi('system:resource:list')")
    @GetMapping("/list")
    public TableDataInfo list(Resource resource)
    {
        startPage();
        List<Resource> list = resourceService.selectResourceList(resource);
        return getDataTable(list);
    }

    /**
     * 导出活动资源;活动资源列表
     */
    @PreAuthorize("@ss.hasPermi('system:resource:export')")
    @Log(title = "活动资源;活动资源", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Resource resource)
    {
        List<Resource> list = resourceService.selectResourceList(resource);
        ExcelUtil<Resource> util = new ExcelUtil<Resource>(Resource.class);
        util.exportExcel(response, list, "活动资源;活动资源数据");
    }

    /**
     * 获取活动资源;活动资源详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:resource:query')")
    @GetMapping(value = "/{resourceId}")
    public AjaxResult getInfo(@PathVariable("resourceId") Long resourceId)
    {
        return success(resourceService.selectResourceByResourceId(resourceId));
    }

    /**
     * 新增活动资源;活动资源
     */
    @PreAuthorize("@ss.hasPermi('system:resource:add')")
    @Log(title = "活动资源;活动资源", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Resource resource)
    {
        resource.setCreatedTime(new Date());
        resource.setCreatedBy(SecurityUtils.getLoginUser().getUsername());    //设置创建人的用户名
        return toAjax(resourceService.insertResource(resource));
    }

    /**
     * 修改活动资源;活动资源
     */
    @PreAuthorize("@ss.hasPermi('system:resource:edit')")
    @Log(title = "活动资源;活动资源", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Resource resource)
    {
        return toAjax(resourceService.updateResource(resource));
    }

    /**
     * 删除活动资源;活动资源
     */
    @PreAuthorize("@ss.hasPermi('system:resource:remove')")
    @Log(title = "活动资源;活动资源", businessType = BusinessType.DELETE)
	@DeleteMapping("/{resourceIds}")
    public AjaxResult remove(@PathVariable Long[] resourceIds)
    {
        return toAjax(resourceService.deleteResourceByResourceIds(resourceIds));
    }
}
