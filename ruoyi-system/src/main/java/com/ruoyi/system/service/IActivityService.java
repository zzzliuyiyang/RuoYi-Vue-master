package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.Activity;

/**
 * 活动管理Service接口
 * 
 * @author ruoyi
 * @date 2024-05-27
 */
public interface IActivityService 
{
    /**
     * 查询活动管理
     * 
     * @param activityId 活动管理主键
     * @return 活动管理
     */
    public Activity selectActivityByActivityId(Long activityId);

    /**
     * 查询活动管理列表
     * 
     * @param activity 活动管理
     * @return 活动管理集合
     */
    public List<Activity> selectActivityList(Activity activity);

    /**
     * 新增活动管理
     * 
     * @param activity 活动管理
     * @return 结果
     */
    public int insertActivity(Activity activity);

    /**
     * 修改活动管理
     * 
     * @param activity 活动管理
     * @return 结果
     */
    public int updateActivity(Activity activity);

    /**
     * 批量删除活动管理
     * 
     * @param activityIds 需要删除的活动管理主键集合
     * @return 结果
     */
    public int deleteActivityByActivityIds(Long[] activityIds);

    /**
     * 删除活动管理信息
     * 
     * @param activityId 活动管理主键
     * @return 结果
     */
    public int deleteActivityByActivityId(Long activityId);
}
