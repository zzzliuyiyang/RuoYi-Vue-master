package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.DiscussMapper;
import com.ruoyi.system.domain.Discuss;
import com.ruoyi.system.service.IDiscussService;

/**
 * 评论Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-09
 */
@Service
public class DiscussServiceImpl implements IDiscussService 
{
    @Autowired
    private DiscussMapper discussMapper;

    /**
     * 查询评论
     * 
     * @param id 评论主键
     * @return 评论
     */
    @Override
    public Discuss selectDiscussById(Long id)
    {
        return discussMapper.selectDiscussById(id);
    }

    /**
     * 查询评论列表
     * 
     * @param discuss 评论
     * @return 评论
     */
    @Override
    public List<Discuss> selectDiscussList(Discuss discuss)
    {
        return discussMapper.selectDiscussList(discuss);
    }

    /**
     * 新增评论
     * 
     * @param discuss 评论
     * @return 结果
     */
    @Override
    public int insertDiscuss(Discuss discuss)
    {
        return discussMapper.insertDiscuss(discuss);
    }

    /**
     * 修改评论
     * 
     * @param discuss 评论
     * @return 结果
     */
    @Override
    public int updateDiscuss(Discuss discuss)
    {
        return discussMapper.updateDiscuss(discuss);
    }

    /**
     * 批量删除评论
     * 
     * @param ids 需要删除的评论主键
     * @return 结果
     */
    @Override
    public int deleteDiscussByIds(Long[] ids)
    {
        return discussMapper.deleteDiscussByIds(ids);
    }

    /**
     * 删除评论信息
     * 
     * @param id 评论主键
     * @return 结果
     */
    @Override
    public int deleteDiscussById(Long id)
    {
        return discussMapper.deleteDiscussById(id);
    }
}
