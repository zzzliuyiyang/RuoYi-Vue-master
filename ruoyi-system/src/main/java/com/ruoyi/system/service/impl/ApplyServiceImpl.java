package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.system.domain.ActivityUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.ApplyMapper;
import com.ruoyi.system.domain.Apply;
import com.ruoyi.system.service.IApplyService;

/**
 * 申请管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-01
 */
@Service
public class ApplyServiceImpl implements IApplyService 
{
    @Autowired
    private ApplyMapper applyMapper;

    /**
     * 查询申请管理
     * 
     * @param id 申请管理主键
     * @return 申请管理
     */
    @Override
    public Apply selectApplyById(Long id)
    {
        return applyMapper.selectApplyById(id);
    }

    /**
     * 查询申请管理列表
     * 
     * @param apply 申请管理
     * @return 申请管理
     */
    @Override
    public List<Apply> selectApplyList(Apply apply)
    {
        return applyMapper.selectApplyList(apply);
    }

    /**
     * 新增申请管理
     * 
     * @param apply 申请管理
     * @return 结果
     */
    @Override
    public int insertApply(Apply apply)
    {
        return applyMapper.insertApply(apply);
    }

    /**
     * 修改申请管理
     * 
     * @param apply 申请管理
     * @return 结果
     */
    @Override
    public int updateApply(Apply apply)
    {
        return applyMapper.updateApply(apply);
    }

    /**
     * 批量删除申请管理
     * 
     * @param ids 需要删除的申请管理主键
     * @return 结果
     */
    @Override
    public int deleteApplyByIds(Long[] ids)
    {
        return applyMapper.deleteApplyByIds(ids);
    }

    /**
     * 删除申请管理信息
     * 
     * @param id 申请管理主键
     * @return 结果
     */
    @Override
    public int deleteApplyById(Long id)
    {
        return applyMapper.deleteApplyById(id);
    }

    /**
     * 添加活动用户关联
     *
     * @param activityUser 添加关联
     * @return 结果
     */
    @Override
    public int addUser(ActivityUser activityUser) {
        return applyMapper.addUser(activityUser);
    }
}
