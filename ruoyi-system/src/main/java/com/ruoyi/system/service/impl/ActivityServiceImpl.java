package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.system.domain.ActivityUser;
import com.ruoyi.system.mapper.ActivityMapper;
import com.ruoyi.system.domain.Activity;
import com.ruoyi.system.service.IActivityService;

/**
 * 活动管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-05-27
 */
@Service
public class ActivityServiceImpl implements IActivityService 
{
    @Autowired
    private ActivityMapper activityMapper;

    /**
     * 查询活动管理
     * 
     * @param activityId 活动管理主键
     * @return 活动管理
     */
    @Override
    public Activity selectActivityByActivityId(Long activityId)
    {
        return activityMapper.selectActivityByActivityId(activityId);
    }

    /**
     * 查询活动管理列表
     * 
     * @param activity 活动管理
     * @return 活动管理
     */
    @Override
    public List<Activity> selectActivityList(Activity activity)
    {
        return activityMapper.selectActivityList(activity);
    }

    /**
     * 新增活动管理
     * 
     * @param activity 活动管理
     * @return 结果
     */
    @Transactional
    @Override
    public int insertActivity(Activity activity)
    {
        int rows = activityMapper.insertActivity(activity);
        insertActivityUser(activity);
        return rows;
    }

    /**
     * 修改活动管理
     * 
     * @param activity 活动管理
     * @return 结果
     */
    @Transactional
    @Override
    public int updateActivity(Activity activity)
    {
        activityMapper.deleteActivityUserByActivityId(activity.getActivityId());
        insertActivityUser(activity);
        return activityMapper.updateActivity(activity);
    }

    /**
     * 批量删除活动管理
     * 
     * @param activityIds 需要删除的活动管理主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteActivityByActivityIds(Long[] activityIds)
    {
        activityMapper.deleteActivityUserByActivityIds(activityIds);
        return activityMapper.deleteActivityByActivityIds(activityIds);
    }

    /**
     * 删除活动管理信息
     * 
     * @param activityId 活动管理主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteActivityByActivityId(Long activityId)
    {
        activityMapper.deleteActivityUserByActivityId(activityId);
        return activityMapper.deleteActivityByActivityId(activityId);
    }

    /**
     * 新增用户和活动关联信息
     * 
     * @param activity 活动管理对象
     */
    public void insertActivityUser(Activity activity)
    {
        List<ActivityUser> activityUserList = activity.getActivityUserList();
        Long activityId = activity.getActivityId();
        if (StringUtils.isNotNull(activityUserList))
        {
            List<ActivityUser> list = new ArrayList<ActivityUser>();
            for (ActivityUser activityUser : activityUserList)
            {
                activityUser.setActivityId(activityId);
                list.add(activityUser);
            }
            if (list.size() > 0)
            {
                activityMapper.batchActivityUser(list);
            }
        }
    }
}
