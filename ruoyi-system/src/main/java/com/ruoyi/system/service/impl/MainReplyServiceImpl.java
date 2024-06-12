package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.system.domain.AppendReply;
import com.ruoyi.system.mapper.MainReplyMapper;
import com.ruoyi.system.domain.MainReply;
import com.ruoyi.system.service.IMainReplyService;

/**
 * 评论Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-10
 */
@Service
public class MainReplyServiceImpl implements IMainReplyService 
{
    @Autowired
    private MainReplyMapper mainReplyMapper;

    /**
     * 查询评论
     * 
     * @param id 评论主键
     * @return 评论
     */
    @Override
    public MainReply selectMainReplyById(Long id)
    {
        return mainReplyMapper.selectMainReplyById(id);
    }

    /**
     * 查询评论列表
     * 
     * @param mainReply 评论
     * @return 评论
     */
    @Override
    public List<MainReply> selectMainReplyList(MainReply mainReply)
    {
        return mainReplyMapper.selectMainReplyList(mainReply);
    }

    /**
     * 新增评论
     * 
     * @param mainReply 评论
     * @return 结果
     */
    @Transactional
    @Override
    public int insertMainReply(MainReply mainReply)
    {
        int rows = mainReplyMapper.insertMainReply(mainReply);
        insertAppendReply(mainReply);
        return rows;
    }

    /**
     * 修改评论
     * 
     * @param mainReply 评论
     * @return 结果
     */
    @Transactional
    @Override
    public int updateMainReply(MainReply mainReply)
    {
        mainReplyMapper.deleteAppendReplyByCommentId(mainReply.getId());
        insertAppendReply(mainReply);
        return mainReplyMapper.updateMainReply(mainReply);
    }

    /**
     * 批量删除评论
     * 
     * @param ids 需要删除的评论主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteMainReplyByIds(Long[] ids)
    {
        mainReplyMapper.deleteAppendReplyByCommentIds(ids);
        return mainReplyMapper.deleteMainReplyByIds(ids);
    }

    /**
     * 删除评论信息
     * 
     * @param id 评论主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteMainReplyById(Long id)
    {
        mainReplyMapper.deleteAppendReplyByCommentId(id);
        return mainReplyMapper.deleteMainReplyById(id);
    }

    /**
     * 查询评论活动ID
     *
     * @param id 活动ID
     * @return 评论
     */
    @Override
    public List<MainReply> selectMainReplyByActivityId(Long id) {
        return mainReplyMapper.selectMainReplyByActivityId(id);
    }

    /**
     * 新增回复评论信息
     * 
     * @param mainReply 评论对象
     */
    public void insertAppendReply(MainReply mainReply)
    {
        List<AppendReply> appendReplyList = mainReply.getAppendReplyList();
        Long id = mainReply.getId();
        if (StringUtils.isNotNull(appendReplyList))
        {
            List<AppendReply> list = new ArrayList<AppendReply>();
            for (AppendReply appendReply : appendReplyList)
            {
                appendReply.setCommentId(id);
                list.add(appendReply);
            }
            if (list.size() > 0)
            {
                mainReplyMapper.batchAppendReply(list);
            }
        }
    }


    /**
     * 新增子评论
     *
     * @param appendReply 评论
     * @return 结果
     */
    @Transactional
    @Override
    public int insertAppendReply(AppendReply appendReply)
    {
        return mainReplyMapper.insertAppendReply(appendReply);
    }
}
