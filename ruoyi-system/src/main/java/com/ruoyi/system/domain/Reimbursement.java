package com.ruoyi.system.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 报销对象 reimbursement
 * 
 * @author ruoyi
 * @date 2024-06-09
 */
public class Reimbursement extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long projectId;

    /** 用户ID */
    @Excel(name = "用户ID")
    private Long userId;

    /** 活动ID */
    @Excel(name = "活动ID")
    private Long activityId;

    /** 报销金额 */
    @Excel(name = "报销金额")
    private BigDecimal money;

    /** 状态 */
    @Excel(name = "状态")
    private Long state;

    /** 备注 */
    @Excel(name = "备注")
    private String remark;

    /** 用户昵称 */
    @Excel(name = "用户昵称")
    private String userName;

    /** 活动名称 */
    @Excel(name = "活动名称")
    private String activityName;

    public void setProjectId(Long projectId) 
    {
        this.projectId = projectId;
    }

    public Long getProjectId() 
    {
        return projectId;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setActivityId(Long activityId)
    {
        this.activityId = activityId;
    }

    public Long getActivityId()
    {
        return activityId;
    }
    public void setMoney(BigDecimal money) 
    {
        this.money = money;
    }

    public BigDecimal getMoney() 
    {
        return money;
    }
    public void setState(Long state) 
    {
        this.state = state;
    }

    public Long getState() 
    {
        return state;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("projectId", getProjectId())
            .append("userId", getUserId())
            .append("activityId", getActivityId())
            .append("money", getMoney())
            .append("state", getState())
            .append("userName", getUserName())
            .append("activityName", getActivityName())
            .append("remark", getRemark())
            .toString();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getActivityName() {
        return activityName;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    @Override
    public String getRemark() {
        return remark;
    }

    @Override
    public void setRemark(String remark) {
        this.remark = remark;
    }
}
