package com.ruoyi.system.service;

import java.util.List;

import com.ruoyi.system.domain.AppendReply;
import com.ruoyi.system.domain.MainReply;

/**
 * 评论Service接口
 * 
 * @author ruoyi
 * @date 2024-06-10
 */
public interface IMainReplyService 
{
    /**
     * 查询评论
     * 
     * @param id 评论主键
     * @return 评论
     */
    public MainReply selectMainReplyById(Long id);

    /**
     * 查询评论列表
     * 
     * @param mainReply 评论
     * @return 评论集合
     */
    public List<MainReply> selectMainReplyList(MainReply mainReply);

    /**
     * 新增评论
     * 
     * @param mainReply 评论
     * @return 结果
     */
    public int insertMainReply(MainReply mainReply);

    /**
     * 修改评论
     * 
     * @param mainReply 评论
     * @return 结果
     */
    public int updateMainReply(MainReply mainReply);

    /**
     * 批量删除评论
     * 
     * @param ids 需要删除的评论主键集合
     * @return 结果
     */
    public int deleteMainReplyByIds(Long[] ids);

    /**
     * 删除评论信息
     * 
     * @param id 评论主键
     * @return 结果
     */
    public int deleteMainReplyById(Long id);

    /**
     * 查询评论活动ID
     *
     * @param id 活动ID
     * @return 评论
     */
    public List<MainReply> selectMainReplyByActivityId(Long id);


    /**
     * 新增子评论
     *
     * @param appendReply 评论
     * @return 结果
     */
    public int insertAppendReply(AppendReply appendReply);
}
