package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 申请管理对象 apply
 * 
 * @author ruoyi
 * @date 2024-06-01
 */
public class Apply extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 申请ID */
    private Long id;

    /** 活动ID */
    @Excel(name = "活动ID")
    private Long activityId;

    /** 申请人ID */
    @Excel(name = "申请人ID")
    private Long userId;

    /** 申请状态 */
    @Excel(name = "申请状态")
    private Long applyState;

    /** 活动名称 */
    @Excel(name = "活动名称")
    private String activityName;

    /** 申请人名称 */
    @Excel(name = "申请人名称")
    private String userName;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
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
    public void setApplyState(Long applyState) 
    {
        this.applyState = applyState;
    }

    public Long getApplyState() 
    {
        return applyState;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("activityId", getActivityId())
            .append("userId", getUserId())
            .append("applyState", getApplyState())
            .append("activityName", getActivityName())
            .append("userName", getUserName())
            .toString();
    }

    public String getActivityName() {
        return activityName;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
