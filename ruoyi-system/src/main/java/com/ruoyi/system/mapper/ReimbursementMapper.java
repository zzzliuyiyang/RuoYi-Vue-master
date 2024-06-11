package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.Reimbursement;

/**
 * 报销Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-09
 */
public interface ReimbursementMapper 
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
     * 删除报销
     * 
     * @param projectId 报销主键
     * @return 结果
     */
    public int deleteReimbursementByProjectId(Long projectId);

    /**
     * 批量删除报销
     * 
     * @param projectIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteReimbursementByProjectIds(Long[] projectIds);
}
