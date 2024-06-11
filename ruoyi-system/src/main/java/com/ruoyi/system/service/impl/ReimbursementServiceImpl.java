package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.ReimbursementMapper;
import com.ruoyi.system.domain.Reimbursement;
import com.ruoyi.system.service.IReimbursementService;

/**
 * 报销Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-09
 */
@Service
public class ReimbursementServiceImpl implements IReimbursementService 
{
    @Autowired
    private ReimbursementMapper reimbursementMapper;

    /**
     * 查询报销
     * 
     * @param projectId 报销主键
     * @return 报销
     */
    @Override
    public Reimbursement selectReimbursementByProjectId(Long projectId)
    {
        return reimbursementMapper.selectReimbursementByProjectId(projectId);
    }

    /**
     * 查询报销列表
     * 
     * @param reimbursement 报销
     * @return 报销
     */
    @Override
    public List<Reimbursement> selectReimbursementList(Reimbursement reimbursement)
    {
        return reimbursementMapper.selectReimbursementList(reimbursement);
    }

    /**
     * 新增报销
     * 
     * @param reimbursement 报销
     * @return 结果
     */
    @Override
    public int insertReimbursement(Reimbursement reimbursement)
    {
        return reimbursementMapper.insertReimbursement(reimbursement);
    }

    /**
     * 修改报销
     * 
     * @param reimbursement 报销
     * @return 结果
     */
    @Override
    public int updateReimbursement(Reimbursement reimbursement)
    {
        return reimbursementMapper.updateReimbursement(reimbursement);
    }

    /**
     * 批量删除报销
     * 
     * @param projectIds 需要删除的报销主键
     * @return 结果
     */
    @Override
    public int deleteReimbursementByProjectIds(Long[] projectIds)
    {
        return reimbursementMapper.deleteReimbursementByProjectIds(projectIds);
    }

    /**
     * 删除报销信息
     * 
     * @param projectId 报销主键
     * @return 结果
     */
    @Override
    public int deleteReimbursementByProjectId(Long projectId)
    {
        return reimbursementMapper.deleteReimbursementByProjectId(projectId);
    }
}
