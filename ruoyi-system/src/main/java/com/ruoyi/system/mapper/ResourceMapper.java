package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.Resource;

/**
 * 活动资源;活动资源Mapper接口
 * 
 * @author ruoyi
 * @date 2024-05-26
 */
public interface ResourceMapper 
{
    /**
     * 查询活动资源;活动资源
     * 
     * @param resourceId 活动资源;活动资源主键
     * @return 活动资源;活动资源
     */
    public Resource selectResourceByResourceId(Long resourceId);

    /**
     * 查询活动资源;活动资源列表
     * 
     * @param resource 活动资源;活动资源
     * @return 活动资源;活动资源集合
     */
    public List<Resource> selectResourceList(Resource resource);

    /**
     * 新增活动资源;活动资源
     * 
     * @param resource 活动资源;活动资源
     * @return 结果
     */
    public int insertResource(Resource resource);

    /**
     * 修改活动资源;活动资源
     * 
     * @param resource 活动资源;活动资源
     * @return 结果
     */
    public int updateResource(Resource resource);

    /**
     * 删除活动资源;活动资源
     * 
     * @param resourceId 活动资源;活动资源主键
     * @return 结果
     */
    public int deleteResourceByResourceId(Long resourceId);

    /**
     * 批量删除活动资源;活动资源
     * 
     * @param resourceIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteResourceByResourceIds(Long[] resourceIds);
}
