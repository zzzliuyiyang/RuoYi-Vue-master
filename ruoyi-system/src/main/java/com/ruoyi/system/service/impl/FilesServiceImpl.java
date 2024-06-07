package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.FilesMapper;
import com.ruoyi.system.domain.Files;
import com.ruoyi.system.service.IFilesService;

/**
 * 文件存储Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-05
 */
@Service
public class FilesServiceImpl implements IFilesService 
{
    @Autowired
    private FilesMapper filesMapper;

    /**
     * 查询文件存储
     * 
     * @param fileId 文件存储主键
     * @return 文件存储
     */
    @Override
    public Files selectFilesByFileId(Long fileId)
    {
        return filesMapper.selectFilesByFileId(fileId);
    }

    /**
     * 查询文件存储列表
     * 
     * @param files 文件存储
     * @return 文件存储
     */
    @Override
    public List<Files> selectFilesList(Files files)
    {
        return filesMapper.selectFilesList(files);
    }

    /**
     * 新增文件存储
     * 
     * @param files 文件存储
     * @return 结果
     */
    @Override
    public int insertFiles(Files files)
    {
        return filesMapper.insertFiles(files);
    }

    /**
     * 修改文件存储
     * 
     * @param files 文件存储
     * @return 结果
     */
    @Override
    public int updateFiles(Files files)
    {
        return filesMapper.updateFiles(files);
    }

    /**
     * 批量删除文件存储
     * 
     * @param fileIds 需要删除的文件存储主键
     * @return 结果
     */
    @Override
    public int deleteFilesByFileIds(Long[] fileIds)
    {
        return filesMapper.deleteFilesByFileIds(fileIds);
    }

    /**
     * 删除文件存储
     *
     * @param fileId 需要删除的文件存储主键
     * @return 结果
     */
    @Override
    public int deleteFilesByFileId(Long fileId)
    {
        return filesMapper.deleteFilesByFileId(fileId);
    }

    /**
     * 查询文件存储信息
     *
     * @param activityId 活动ID
     * @return 结果
     */
    @Override
    public Files selectFilesByActivityId(Long activityId) {
        return filesMapper.selectFilesByActivityId(activityId);
    }
}
