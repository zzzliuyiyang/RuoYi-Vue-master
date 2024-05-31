package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.ResourceState;

/**
 * 资源状态及预约时间Service接口
 * 
 * @author ruoyi
 * @date 2024-05-31
 */
public interface IResourceStateService 
{
    /**
     * 查询资源状态及预约时间
     * 
     * @param id 资源状态及预约时间主键
     * @return 资源状态及预约时间
     */
    public ResourceState selectResourceStateById(Long id);

    /**
     * 查询资源状态及预约时间列表
     * 
     * @param resourceState 资源状态及预约时间
     * @return 资源状态及预约时间集合
     */
    public List<ResourceState> selectResourceStateList(ResourceState resourceState);

    /**
     * 新增资源状态及预约时间
     * 
     * @param resourceState 资源状态及预约时间
     * @return 结果
     */
    public int insertResourceState(ResourceState resourceState);

    /**
     * 修改资源状态及预约时间
     * 
     * @param resourceState 资源状态及预约时间
     * @return 结果
     */
    public int updateResourceState(ResourceState resourceState);

    /**
     * 批量删除资源状态及预约时间
     * 
     * @param ids 需要删除的资源状态及预约时间主键集合
     * @return 结果
     */
    public int deleteResourceStateByIds(Long[] ids);

    /**
     * 删除资源状态及预约时间信息
     * 
     * @param id 资源状态及预约时间主键
     * @return 结果
     */
    public int deleteResourceStateById(Long id);
}
