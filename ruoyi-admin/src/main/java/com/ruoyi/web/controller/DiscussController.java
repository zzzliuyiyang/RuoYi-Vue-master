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
import com.ruoyi.system.domain.Discuss;
import com.ruoyi.system.service.IDiscussService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 评论Controller
 * 
 * @author ruoyi
 * @date 2024-06-09
 */
@RestController
@RequestMapping("/system/discuss")
public class DiscussController extends BaseController
{
    @Autowired
    private IDiscussService discussService;

    /**
     * 查询评论列表
     */
    @PreAuthorize("@ss.hasPermi('system:discuss:list')")
    @GetMapping("/list")
    public TableDataInfo list(Discuss discuss)
    {
        startPage();
        List<Discuss> list = discussService.selectDiscussList(discuss);
        return getDataTable(list);
    }

    /**
     * 导出评论列表
     */
    @PreAuthorize("@ss.hasPermi('system:discuss:export')")
    @Log(title = "评论", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Discuss discuss)
    {
        List<Discuss> list = discussService.selectDiscussList(discuss);
        ExcelUtil<Discuss> util = new ExcelUtil<Discuss>(Discuss.class);
        util.exportExcel(response, list, "评论数据");
    }

    /**
     * 获取评论详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:discuss:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(discussService.selectDiscussById(id));
    }

    /**
     * 新增评论
     */
    @PreAuthorize("@ss.hasPermi('system:discuss:add')")
    @Log(title = "评论", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Discuss discuss)
    {
        return toAjax(discussService.insertDiscuss(discuss));
    }

    /**
     * 修改评论
     */
    @PreAuthorize("@ss.hasPermi('system:discuss:edit')")
    @Log(title = "评论", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Discuss discuss)
    {
        return toAjax(discussService.updateDiscuss(discuss));
    }

    /**
     * 删除评论
     */
    @PreAuthorize("@ss.hasPermi('system:discuss:remove')")
    @Log(title = "评论", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(discussService.deleteDiscussByIds(ids));
    }
}
