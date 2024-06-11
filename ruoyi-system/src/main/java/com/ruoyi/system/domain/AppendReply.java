package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 回复评论对象 append_reply
 * 
 * @author ruoyi
 * @date 2024-06-10
 */
public class AppendReply extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键id */
    private Long id;

    /** 父评论id */
    @Excel(name = "父评论id")
    private Long commentId;

    /** 评论者id */
    @Excel(name = "评论者id")
    private Long fromId;

    /** 评论者昵称 */
    @Excel(name = "评论者昵称")
    private String fromName;

    /** 评论者头像路径 */
    @Excel(name = "评论者头像路径")
    private String fromAvatar;

    /** 被评论者id */
    @Excel(name = "被评论者id")
    private Long toId;

    /** 被评论者昵称 */
    @Excel(name = "被评论者昵称")
    private String toName;

    /** 被评论者头像 */
    @Excel(name = "被评论者头像")
    private String toAvatar;

    /** 评论时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "评论时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date date;

    /** 评论内容 */
    @Excel(name = "评论内容")
    private String content;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setCommentId(Long commentId) 
    {
        this.commentId = commentId;
    }

    public Long getCommentId() 
    {
        return commentId;
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
    public void setToId(Long toId) 
    {
        this.toId = toId;
    }

    public Long getToId() 
    {
        return toId;
    }
    public void setToName(String toName) 
    {
        this.toName = toName;
    }

    public String getToName() 
    {
        return toName;
    }
    public void setToAvatar(String toAvatar) 
    {
        this.toAvatar = toAvatar;
    }

    public String getToAvatar() 
    {
        return toAvatar;
    }
    public void setDate(Date date) 
    {
        this.date = date;
    }

    public Date getDate() 
    {
        return date;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("commentId", getCommentId())
            .append("fromId", getFromId())
            .append("fromName", getFromName())
            .append("fromAvatar", getFromAvatar())
            .append("toId", getToId())
            .append("toName", getToName())
            .append("toAvatar", getToAvatar())
            .append("date", getDate())
            .append("content", getContent())
            .toString();
    }
}
