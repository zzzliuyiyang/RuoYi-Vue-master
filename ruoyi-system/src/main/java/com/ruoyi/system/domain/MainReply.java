package com.ruoyi.system.domain;

import java.util.List;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 评论对象 main_reply
 * 
 * @author ruoyi
 * @date 2024-06-10
 */
public class MainReply extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键id */
    private Long id;

    /** 评论时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "评论时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date date;

    /** 活动id */
    @Excel(name = "活动id")
    private Long activityId;

    /** 评论者id */
    @Excel(name = "评论者id")
    private Long fromId;

    /** 评论者昵称 */
    @Excel(name = "评论者昵称")
    private String fromName;

    /** 评论者头像路径 */
    @Excel(name = "评论者头像路径")
    private String fromAvatar;

    /** 点赞人数 */
    @Excel(name = "点赞人数")
    private Long likeNum;

    /** 评论内容 */
    @Excel(name = "评论内容")
    private String content;

    /** 回复评论信息 */
    private List<AppendReply> appendReplyList;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setDate(Date date) 
    {
        this.date = date;
    }

    public Date getDate() 
    {
        return date;
    }
    public void setActivityId(Long activityId) 
    {
        this.activityId = activityId;
    }

    public Long getActivityId() 
    {
        return activityId;
    }
    public void setFromId(Long fromId) 
    {
        this.fromId = fromId;
    }

    public Long getFromId() 
    {
        return fromId;
    }
    public void setFromName(String fromName) 
    {
        this.fromName = fromName;
    }

    public String getFromName() 
    {
        return fromName;
    }
    public void setFromAvatar(String fromAvatar) 
    {
        this.fromAvatar = fromAvatar;
    }

    public String getFromAvatar() 
    {
        return fromAvatar;
    }
    public void setLikeNum(Long likeNum) 
    {
        this.likeNum = likeNum;
    }

    public Long getLikeNum() 
    {
        return likeNum;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }

    public List<AppendReply> getAppendReplyList()
    {
        return appendReplyList;
    }

    public void setAppendReplyList(List<AppendReply> appendReplyList)
    {
        this.appendReplyList = appendReplyList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("date", getDate())
            .append("activityId", getActivityId())
            .append("fromId", getFromId())
            .append("fromName", getFromName())
            .append("fromAvatar", getFromAvatar())
            .append("likeNum", getLikeNum())
            .append("content", getContent())
            .append("appendReplyList", getAppendReplyList())
            .toString();
    }
}
