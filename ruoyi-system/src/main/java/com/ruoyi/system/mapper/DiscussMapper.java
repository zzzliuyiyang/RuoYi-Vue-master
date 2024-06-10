package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.Discuss;

/**
 * 评论Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-09
 */
public interface DiscussMapper 
{
    /**
     * 查询评论
     * 
     * @param id 评论主键
     * @return 评论
     */
    public Discuss selectDiscussById(Long id);

    /**
     * 查询评论列表
     * 
     * @param discuss 评论
     * @return 评论集合
     */
    public List<Discuss> selectDiscussList(Discuss discuss);

    /**
     * 新增评论
     * 
     * @param discuss 评论
     * @return 结果
     */
    public int insertDiscuss(Discuss discuss);

    /**
     * 修改评论
     * 
     * @param discuss 评论
     * @return 结果
     */
    public int updateDiscuss(Discuss discuss);

    /**
     * 删除评论
     * 
     * @param id 评论主键
     * @return 结果
     */
    public int deleteDiscussById(Long id);

    /**
     * 批量删除评论
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDiscussByIds(Long[] ids);
}
