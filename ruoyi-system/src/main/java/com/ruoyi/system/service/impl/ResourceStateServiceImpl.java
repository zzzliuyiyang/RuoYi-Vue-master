package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.ResourceStateMapper;
import com.ruoyi.system.domain.ResourceState;
import com.ruoyi.system.service.IResourceStateService;

/**
 * 资源状态及预约时间Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-05-31
 */
@Service
public class ResourceStateServiceImpl implements IResourceStateService 
{
    @Autowired
    private ResourceStateMapper resourceStateMapper;

    /**
     * 查询资源状态及预约时间
     * 
     * @param id 资源状态及预约时间主键
     * @return 资源状态及预约时间
     */
    @Override
    public ResourceState selectResourceStateById(Long id)
    {
        return resourceStateMapper.selectResourceStateById(id);
    }

    /**
     * 查询资源状态及预约时间列表
     * 
     * @param resourceState 资源状态及预约时间
     * @return 资源状态及预约时间
     */
    @Override
    public List<ResourceState> selectResourceStateList(ResourceState resourceState)
    {
        return resourceStateMapper.selectResourceStateList(resourceState);
    }

    /**
     * 新增资源状态及预约时间
     * 
     * @param resourceState 资源状态及预约时间
     * @return 结果
     */
    @Override
    public int insertResourceState(ResourceState resourceState)
    {
        return resourceStateMapper.insertResourceState(resourceState);
    }

    /**
     * 修改资源状态及预约时间
     * 
     * @param resourceState 资源状态及预约时间
     * @return 结果
     */
    @Override
    public int updateResourceState(ResourceState resourceState)
    {
        return resourceStateMapper.updateResourceState(resourceState);
    }

    /**
     * 批量删除资源状态及预约时间
     * 
     * @param ids 需要删除的资源状态及预约时间主键
     * @return 结果
     */
    @Override
    public int deleteResourceStateByIds(Long[] ids)
    {
        return resourceStateMapper.deleteResourceStateByIds(ids);
    }

    /**
     * 删除资源状态及预约时间信息
     * 
     * @param id 资源状态及预约时间主键
     * @return 结果
     */
    @Override
    public int deleteResourceStateById(Long id)
    {
        return resourceStateMapper.deleteResourceStateById(id);
    }
}
