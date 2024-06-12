package com.ruoyi.web.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.system.domain.AppendReply;
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
import com.ruoyi.system.domain.MainReply;
import com.ruoyi.system.service.IMainReplyService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 评论Controller
 * 
 * @author ruoyi
 * @date 2024-06-10
 */
@RestController
@RequestMapping("/system/reply")
public class MainReplyController extends BaseController
{
    @Autowired
    private IMainReplyService mainReplyService;

    /**
     * 查询评论列表
     */
    @PreAuthorize("@ss.hasPermi('system:reply:list')")
    @GetMapping("/list")
    public TableDataInfo list(MainReply mainReply)
    {
        startPage();
        List<MainReply> list = mainReplyService.selectMainReplyList(mainReply);
        return getDataTable(list);
    }

    /**
     * 导出评论列表
     */
    @PreAuthorize("@ss.hasPermi('system:reply:export')")
    @Log(title = "评论", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MainReply mainReply)
    {
        List<MainReply> list = mainReplyService.selectMainReplyList(mainReply);
        ExcelUtil<MainReply> util = new ExcelUtil<MainReply>(MainReply.class);
        util.exportExcel(response, list, "评论数据");
    }

    /**
     * 获取评论详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:reply:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(mainReplyService.selectMainReplyById(id));
    }


    /**
     * 获取评论详细信息活动ID
     */
    @PreAuthorize("@ss.hasPermi('system:reply:list')")
    @GetMapping(value = "/activity/{id}")
    public AjaxResult selectMainReplyByActivityId(@PathVariable("id") Long id)
    {
        List<MainReply> list =mainReplyService.selectMainReplyByActivityId(id);
        return success(list);
    }

    /**
     * 新增评论
     */
    @PreAuthorize("@ss.hasPermi('system:reply:add')")
    @Log(title = "评论", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MainReply mainReply)
    {
        return toAjax(mainReplyService.insertMainReply(mainReply));
    }

    /**
     * 新增子评论
     */
    @PreAuthorize("@ss.hasPermi('system:reply:add')")
    @Log(title = "子评论", businessType = BusinessType.INSERT)
    @PostMapping("/son")
    public AjaxResult addSon(@RequestBody AppendReply appendReply)
    {
        return toAjax(mainReplyService.insertAppendReply(appendReply));
    }

    /**
     * 修改评论
     */
    @PreAuthorize("@ss.hasPermi('system:reply:edit')")
    @Log(title = "评论", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MainReply mainReply)
    {
        return toAjax(mainReplyService.updateMainReply(mainReply));
    }

    /**
     * 删除评论
     */
    @PreAuthorize("@ss.hasPermi('system:reply:remove')")
    @Log(title = "评论", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(mainReplyService.deleteMainReplyByIds(ids));
    }
}
