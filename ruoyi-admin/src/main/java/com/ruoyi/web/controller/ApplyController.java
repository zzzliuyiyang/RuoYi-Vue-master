package com.ruoyi.web.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
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
import com.ruoyi.system.domain.Apply;
import com.ruoyi.system.service.IApplyService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 申请管理Controller
 * 
 * @author ruoyi
 * @date 2024-06-01
 */
@RestController
@RequestMapping("/system/apply")
public class ApplyController extends BaseController
{
    @Autowired
    private IApplyService applyService;

    /**
     * 查询申请管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:apply:list')")
    @GetMapping("/list")
    public TableDataInfo list(Apply apply)
    {
        startPage();
        List<Apply> list = applyService.selectApplyList(apply);
        return getDataTable(list);
    }

    /**
     * 导出申请管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:apply:export')")
    @Log(title = "申请管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Apply apply)
    {
        List<Apply> list = applyService.selectApplyList(apply);
        ExcelUtil<Apply> util = new ExcelUtil<Apply>(Apply.class);
        util.exportExcel(response, list, "申请管理数据");
    }

    /**
     * 获取申请管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:apply:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(applyService.selectApplyById(id));
    }

    /**
     * 新增申请管理
     */
    @PreAuthorize("@ss.hasPermi('system:apply:add')")
    @Log(title = "申请管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Apply apply)
    {
        return toAjax(applyService.insertApply(apply));
    }

    /**
     * 修改申请管理
     */
    @PreAuthorize("@ss.hasPermi('system:apply:edit')")
    @Log(title = "申请管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Apply apply)
    {
        return toAjax(applyService.updateApply(apply));
    }

    /**
     * 删除申请管理
     */
    @PreAuthorize("@ss.hasPermi('system:apply:remove')")
    @Log(title = "申请管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(applyService.deleteApplyByIds(ids));
    }
}
