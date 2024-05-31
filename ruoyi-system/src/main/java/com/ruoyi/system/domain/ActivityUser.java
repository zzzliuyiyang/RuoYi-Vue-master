package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 用户和活动关联对象 activity_user
 * 
 * @author ruoyi
 * @date 2024-05-27
 */
public class ActivityUser extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private String id;

    /** 活动ID */
    @Excel(name = "活动ID")
    private Long activityId;

    /** 用户ID */
    @Excel(name = "用户ID")
    private Long userId;

    /** 用户职位 */
    @Excel(name = "用户职位")
    private String userPosition;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setActivityId(Long activityId) 
    {
        this.activityId = activityId;
    }

    public Long getActivityId() 
    {
        return activityId;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setUserPosition(String userPosition) 
    {
        this.userPosition = userPosition;
    }

    public String getUserPosition() 
    {
        return userPosition;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("activityId", getActivityId())
            .append("userId", getUserId())
            .append("userPosition", getUserPosition())
            .toString();
    }
}
