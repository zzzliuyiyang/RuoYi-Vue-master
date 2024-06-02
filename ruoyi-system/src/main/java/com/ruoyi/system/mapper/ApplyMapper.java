package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.Apply;

/**
 * 申请管理Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-01
 */
public interface ApplyMapper 
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
     * 删除申请管理
     * 
     * @param id 申请管理主键
     * @return 结果
     */
    public int deleteApplyById(Long id);

    /**
     * 批量删除申请管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteApplyByIds(Long[] ids);
}
