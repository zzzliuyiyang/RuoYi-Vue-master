package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.Activity;
import com.ruoyi.system.domain.ActivityUser;

/**
 * 活动管理Mapper接口
 * 
 * @author ruoyi
 * @date 2024-05-27
 */
public interface ActivityMapper 
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
     * 删除活动管理
     * 
     * @param activityId 活动管理主键
     * @return 结果
     */
    public int deleteActivityByActivityId(Long activityId);

    /**
     * 批量删除活动管理
     * 
     * @param activityIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteActivityByActivityIds(Long[] activityIds);

    /**
     * 批量删除用户和活动关联
     * 
     * @param activityIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteActivityUserByActivityIds(Long[] activityIds);
    
    /**
     * 批量新增用户和活动关联
     * 
     * @param activityUserList 用户和活动关联列表
     * @return 结果
     */
    public int batchActivityUser(List<ActivityUser> activityUserList);
    

    /**
     * 通过活动管理主键删除用户和活动关联信息
     * 
     * @param activityId 活动管理ID
     * @return 结果
     */
    public int deleteActivityUserByActivityId(Long activityId);
}
