package com.ruoyi.web.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.system.domain.Activity;
import com.ruoyi.system.service.IActivityService;
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
import com.ruoyi.system.domain.Reimbursement;
import com.ruoyi.system.service.IReimbursementService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 报销Controller
 * 
 * @author ruoyi
 * @date 2024-06-09
 */
@RestController
@RequestMapping("/system/reimbursement")
public class ReimbursementController extends BaseController
{
    @Autowired
    private IReimbursementService reimbursementService;

    @Autowired
    private IActivityService activityService;

    /**
     * 查询报销列表
     */
    @PreAuthorize("@ss.hasPermi('system:reimbursement:list')")
    @GetMapping("/list")
    public TableDataInfo list(Reimbursement reimbursement)
    {
        startPage();
        List<Reimbursement> list = reimbursementService.selectReimbursementList(reimbursement);
        return getDataTable(list);
    }

    /**
     * 导出报销列表
     */
    @PreAuthorize("@ss.hasPermi('system:reimbursement:export')")
    @Log(title = "报销", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Reimbursement reimbursement)
    {
        List<Reimbursement> list = reimbursementService.selectReimbursementList(reimbursement);
        ExcelUtil<Reimbursement> util = new ExcelUtil<Reimbursement>(Reimbursement.class);
        util.exportExcel(response, list, "报销数据");
    }

    /**
     * 获取报销详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:reimbursement:query')")
    @GetMapping(value = "/{projectId}")
    public AjaxResult getInfo(@PathVariable("projectId") Long projectId)
    {
        return success(reimbursementService.selectReimbursementByProjectId(projectId));
    }

    /**
     * 新增报销
     */
    @PreAuthorize("@ss.hasPermi('system:reimbursement:add')")
    @Log(title = "报销", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Reimbursement reimbursement)
    {
        return toAjax(reimbursementService.insertReimbursement(reimbursement));
    }

    /**
     * 修改报销
     */
    @PreAuthorize("@ss.hasPermi('system:reimbursement:edit')")
    @Log(title = "报销", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Reimbursement reimbursement)
    {
        return toAjax(reimbursementService.updateReimbursement(reimbursement));
    }
    /**
     * 修改报销（同意）
     */
    @PreAuthorize("@ss.hasPermi('system:reimbursement:edit')")
    @Log(title = "报销", businessType = BusinessType.UPDATE)
    @PutMapping("/agree")
    public AjaxResult agreeedit(@RequestBody Reimbursement reimbursement)
    {
        Activity activity = activityService.selectActivityByActivityId(reimbursement.getActivityId());

        return toAjax(reimbursementService.updateReimbursement(reimbursement));
    }

    /**
     * 删除报销
     */
    @PreAuthorize("@ss.hasPermi('system:reimbursement:remove')")
    @Log(title = "报销", businessType = BusinessType.DELETE)
	@DeleteMapping("/{projectIds}")
    public AjaxResult remove(@PathVariable Long[] projectIds)
    {
        return toAjax(reimbursementService.deleteReimbursementByProjectIds(projectIds));
    }
}
