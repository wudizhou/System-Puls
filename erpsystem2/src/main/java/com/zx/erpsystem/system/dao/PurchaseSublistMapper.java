package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.PurchaseSublist;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * (PurchaseSublist)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-27 11:18:15
 */
@Repository
public interface PurchaseSublistMapper {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    PurchaseSublist queryById(Long id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<PurchaseSublist> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param purchaseSublist 实例对象
     * @return 对象列表
     */
    List<PurchaseSublist> queryAll(PurchaseSublist purchaseSublist);

    /**
     * 新增数据
     *
     * @param purchaseSublist 实例对象
     * @return 影响行数
     */
    int insert(PurchaseSublist purchaseSublist);

    /**
     * 修改数据
     *
     * @param purchaseSublist 实例对象
     * @return 影响行数
     */
    int update(PurchaseSublist purchaseSublist);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Long id);

    /**
     * 根据采购单号查询商品
     * @param purchaseId
     * @return
     */
    List<PurchaseSublist> queryCommoditiesByPurchaseId(Long purchaseId);

}