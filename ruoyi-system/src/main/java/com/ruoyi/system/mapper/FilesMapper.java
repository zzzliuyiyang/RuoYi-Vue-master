package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.Files;

/**
 * 文件存储Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-05
 */
public interface FilesMapper 
{
    /**
     * 查询文件存储
     * 
     * @param fileId 文件存储主键
     * @return 文件存储
     */
    public Files selectFilesByFileId(Long fileId);

    /**
     * 查询文件存储列表
     * 
     * @param files 文件存储
     * @return 文件存储集合
     */
    public List<Files> selectFilesList(Files files);

    /**
     * 新增文件存储
     * 
     * @param files 文件存储
     * @return 结果
     */
    public int insertFiles(Files files);

    /**
     * 修改文件存储
     * 
     * @param files 文件存储
     * @return 结果
     */
    public int updateFiles(Files files);

    /**
     * 删除文件存储
     * 
     * @param fileId 文件存储主键
     * @return 结果
     */
    public int deleteFilesByFileId(Long fileId);

    /**
     * 批量删除文件存储
     * 
     * @param fileIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteFilesByFileIds(Long[] fileIds);


    /**
     * 查询文件存储信息
     *
     * @param activityId 需要查询的活动ID
     * @return 结果
     */
    public Files selectFilesByActivityId(Long activityId);
}
