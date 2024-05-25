package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.ResourceMapper;
import com.ruoyi.system.domain.Resource;
import com.ruoyi.system.service.IResourceService;

/**
 * 活动资源;活动资源Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-05-26
 */
@Service
public class ResourceServiceImpl implements IResourceService 
{
    @Autowired
    private ResourceMapper resourceMapper;

    /**
     * 查询活动资源;活动资源
     * 
     * @param resourceId 活动资源;活动资源主键
     * @return 活动资源;活动资源
     */
    @Override
    public Resource selectResourceByResourceId(Long resourceId)
    {
        return resourceMapper.selectResourceByResourceId(resourceId);
    }

    /**
     * 查询活动资源;活动资源列表
     * 
     * @param resource 活动资源;活动资源
     * @return 活动资源;活动资源
     */
    @Override
    public List<Resource> selectResourceList(Resource resource)
    {
        return resourceMapper.selectResourceList(resource);
    }

    /**
     * 新增活动资源;活动资源
     * 
     * @param resource 活动资源;活动资源
     * @return 结果
     */
    @Override
    public int insertResource(Resource resource)
    {
        return resourceMapper.insertResource(resource);
    }

    /**
     * 修改活动资源;活动资源
     * 
     * @param resource 活动资源;活动资源
     * @return 结果
     */
    @Override
    public int updateResource(Resource resource)
    {
        return resourceMapper.updateResource(resource);
    }

    /**
     * 批量删除活动资源;活动资源
     * 
     * @param resourceIds 需要删除的活动资源;活动资源主键
     * @return 结果
     */
    @Override
    public int deleteResourceByResourceIds(Long[] resourceIds)
    {
        return resourceMapper.deleteResourceByResourceIds(resourceIds);
    }

    /**
     * 删除活动资源;活动资源信息
     * 
     * @param resourceId 活动资源;活动资源主键
     * @return 结果
     */
    @Override
    public int deleteResourceByResourceId(Long resourceId)
    {
        return resourceMapper.deleteResourceByResourceId(resourceId);
    }
}
