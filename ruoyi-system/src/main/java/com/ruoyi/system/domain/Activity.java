package com.ruoyi.system.domain;

import java.math.BigDecimal;
import java.util.List;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 活动管理对象 activity
 * 
 * @author ruoyi
 * @date 2024-05-27
 */
public class Activity extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 活动ID */
    private Long activityId;

    /** 活动名称 */
    @Excel(name = "活动名称")
    private String activityName;

    /** 创建人ID */
    @Excel(name = "创建人ID")
    private Long userId;

    /** 活动进度 */
    @Excel(name = "活动进度")
    private Long activityProgress;

    /** 活动预算 */
    @Excel(name = "活动预算")
    private BigDecimal budget;

    /** 已花费金额 */
    @Excel(name = "已花费金额")
    private BigDecimal expend;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createdTime;

    /** 筹备开始时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "筹备开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date prepareTime;

    /** 开始进行时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "开始进行时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date processTime;

    /** 结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date finishTime;

    /** 更新人 */
    private String updatedBy;

    /** 更新时间 */
    private Date updatedTime;

    /** 资源ID */
    @Excel(name = "资源ID")
    private Long resourceId;

    /** 用户和活动关联信息 */
    private List<ActivityUser> activityUserList;

    public void setActivityId(Long activityId) 
    {
        this.activityId = activityId;
    }

    public Long getActivityId() 
    {
        return activityId;
    }
    public void setActivityName(String activityName) 
    {
        this.activityName = activityName;
    }

    public String getActivityName() 
    {
        return activityName;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setActivityProgress(Long activityProgress) 
    {
        this.activityProgress = activityProgress;
    }

    public Long getActivityProgress() 
    {
        return activityProgress;
    }
    public void setBudget(BigDecimal budget) 
    {
        this.budget = budget;
    }

    public BigDecimal getBudget() 
    {
        return budget;
    }
    public void setExpend(BigDecimal expend) 
    {
        this.expend = expend;
    }

    public BigDecimal getExpend() 
    {
        return expend;
    }
    public void setCreatedTime(Date createdTime) 
    {
        this.createdTime = createdTime;
    }

    public Date getCreatedTime() 
    {
        return createdTime;
    }
    public void setPrepareTime(Date prepareTime) 
    {
        this.prepareTime = prepareTime;
    }

    public Date getPrepareTime() 
    {
        return prepareTime;
    }
    public void setProcessTime(Date processTime) 
    {
        this.processTime = processTime;
    }

    public Date getProcessTime() 
    {
        return processTime;
    }
    public void setFinishTime(Date finishTime) 
    {
        this.finishTime = finishTime;
    }

    public Date getFinishTime() 
    {
        return finishTime;
    }
    public void setUpdatedBy(String updatedBy) 
    {
        this.updatedBy = updatedBy;
    }

    public String getUpdatedBy() 
    {
        return updatedBy;
    }
    public void setUpdatedTime(Date updatedTime) 
    {
        this.updatedTime = updatedTime;
    }

    public Date getUpdatedTime() 
    {
        return updatedTime;
    }
    public void setResourceId(Long resourceId) 
    {
        this.resourceId = resourceId;
    }

    public Long getResourceId() 
    {
        return resourceId;
    }

    public List<ActivityUser> getActivityUserList()
    {
        return activityUserList;
    }

    public void setActivityUserList(List<ActivityUser> activityUserList)
    {
        this.activityUserList = activityUserList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("activityId", getActivityId())
            .append("activityName", getActivityName())
            .append("userId", getUserId())
            .append("activityProgress", getActivityProgress())
            .append("budget", getBudget())
            .append("expend", getExpend())
            .append("createdTime", getCreatedTime())
            .append("prepareTime", getPrepareTime())
            .append("processTime", getProcessTime())
            .append("finishTime", getFinishTime())
            .append("updatedBy", getUpdatedBy())
            .append("updatedTime", getUpdatedTime())
            .append("resourceId", getResourceId())
            .append("remark", getRemark())
            .append("activityUserList", getActivityUserList())
            .toString();
    }
}
