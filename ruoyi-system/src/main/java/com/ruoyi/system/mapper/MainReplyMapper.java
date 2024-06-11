package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.MainReply;
import com.ruoyi.system.domain.AppendReply;

/**
 * 评论Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-10
 */
public interface MainReplyMapper 
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
     * 删除评论
     * 
     * @param id 评论主键
     * @return 结果
     */
    public int deleteMainReplyById(Long id);

    /**
     * 批量删除评论
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMainReplyByIds(Long[] ids);

    /**
     * 批量删除回复评论
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAppendReplyByCommentIds(Long[] ids);
    
    /**
     * 批量新增回复评论
     * 
     * @param appendReplyList 回复评论列表
     * @return 结果
     */
    public int batchAppendReply(List<AppendReply> appendReplyList);
    

    /**
     * 通过评论主键删除回复评论信息
     * 
     * @param id 评论ID
     * @return 结果
     */
    public int deleteAppendReplyByCommentId(Long id);
}
