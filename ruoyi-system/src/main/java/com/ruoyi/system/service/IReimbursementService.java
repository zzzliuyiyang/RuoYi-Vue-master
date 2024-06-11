package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.Reimbursement;

/**
 * 报销Service接口
 * 
 * @author ruoyi
 * @date 2024-06-09
 */
public interface IReimbursementService 
{
    /**
     * 查询报销
     * 
     * @param projectId 报销主键
     * @return 报销
     */
    public Reimbursement selectReimbursementByProjectId(Long projectId);

    /**
     * 查询报销列表
     * 
     * @param reimbursement 报销
     * @return 报销集合
     */
    public List<Reimbursement> selectReimbursementList(Reimbursement reimbursement);

    /**
     * 新增报销
     * 
     * @param reimbursement 报销
     * @return 结果
     */
    public int insertReimbursement(Reimbursement reimbursement);

    /**
     * 修改报销
     * 
     * @param reimbursement 报销
     * @return 结果
     */
    public int updateReimbursement(Reimbursement reimbursement);

    /**
     * 批量删除报销
     * 
     * @param projectIds 需要删除的报销主键集合
     * @return 结果
     */
    public int deleteReimbursementByProjectIds(Long[] projectIds);

    /**
     * 删除报销信息
     * 
     * @param projectId 报销主键
     * @return 结果
     */
    public int deleteReimbursementByProjectId(Long projectId);
}
