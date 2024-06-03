package com.ruoyi.system.service;

import java.util.List;

import com.ruoyi.system.domain.ActivityUser;
import com.ruoyi.system.domain.Apply;

/**
 * 申请管理Service接口
 * 
 * @author ruoyi
 * @date 2024-06-01
 */
public interface IApplyService 
{
    /**
     * 查询申请管理
     * 
     * @param id 申请管理主键
     * @return 申请管理
     */
    public Apply selectApplyById(Long id);

    /**
     * 查询申请管理列表
     * 
     * @param apply 申请管理
     * @return 申请管理集合
     */
    public List<Apply> selectApplyList(Apply apply);

    /**
     * 新增申请管理
     * 
     * @param apply 申请管理
     * @return 结果
     */
    public int insertApply(Apply apply);

    /**
     * 修改申请管理
     * 
     * @param apply 申请管理
     * @return 结果
     */
    public int updateApply(Apply apply);

    /**
     * 批量删除申请管理
     * 
     * @param ids 需要删除的申请管理主键集合
     * @return 结果
     */
    public int deleteApplyByIds(Long[] ids);

    /**
     * 删除申请管理信息
     * 
     * @param id 申请管理主键
     * @return 结果
     */
    public int deleteApplyById(Long id);

    /**
     * 添加活动用户关联
     *
     * @param activityUser 添加关联
     * @return 结果
     */
    public int addUser(ActivityUser activityUser);
}
