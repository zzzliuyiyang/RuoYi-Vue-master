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
import com.ruoyi.system.domain.Files;
import com.ruoyi.system.service.IFilesService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 文件存储Controller
 * 
 * @author ruoyi
 * @date 2024-06-05
 */
@RestController
@RequestMapping("/system/files")
public class FilesController extends BaseController
{
    @Autowired
    private IFilesService filesService;

    /**
     * 查询文件存储列表
     */
    @PreAuthorize("@ss.hasPermi('system:files:list')")
    @GetMapping("/list")
    public TableDataInfo list(Files files)
    {
        startPage();
        List<Files> list = filesService.selectFilesList(files);
        return getDataTable(list);
    }

    /**
     * 导出文件存储列表
     */
    @PreAuthorize("@ss.hasPermi('system:files:export')")
    @Log(title = "文件存储", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Files files)
    {
        List<Files> list = filesService.selectFilesList(files);
        ExcelUtil<Files> util = new ExcelUtil<Files>(Files.class);
        util.exportExcel(response, list, "文件存储数据");
    }

    /**
     * 获取文件存储详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:files:query')")
    @GetMapping(value = "/{fileId}")
    public AjaxResult getInfo(@PathVariable("fileId") Long fileId)
    {
        return success(filesService.selectFilesByFileId(fileId));
    }

    /**
     * 新增文件存储
     */
    @PreAuthorize("@ss.hasPermi('system:files:add')")
    @Log(title = "文件存储", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Files files)
    {
        return toAjax(filesService.insertFiles(files));
    }

    /**
     * 修改文件存储
     */
    @PreAuthorize("@ss.hasPermi('system:files:edit')")
    @Log(title = "文件存储", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Files files)
    {
        return toAjax(filesService.updateFiles(files));
    }

    /**
     * 删除文件存储
     */
    @PreAuthorize("@ss.hasPermi('system:files:remove')")
    @Log(title = "文件存储", businessType = BusinessType.DELETE)
	@DeleteMapping("/{fileIds}")
    public AjaxResult remove(@PathVariable Long[] fileIds)
    {
        return toAjax(filesService.deleteFilesByFileIds(fileIds));
    }

    /**
     * 查询文件存储
     */
    @PreAuthorize("@ss.hasPermi('system:files:query')")
    @GetMapping(value = "activity/{activityId}")
    public AjaxResult getInfoByActiviytId(@PathVariable("activityId") Long activityId)
    {
        return success(filesService.selectFilesByActivityId(activityId));
    }
}
