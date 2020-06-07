package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.ProductRegistration;

import java.util.List;

/**
 * @author XIANGXIN
 * @date 2020/3/9 - 22:47
 */
public interface ProductionService {
    /**
     * 查询生产产品登记列表
     * @return
     */
    List<ProductRegistration> queryProductionList();

    /**
     * 条件查询产品列表
     * @param productRegistration
     * @return
     */
    List<ProductRegistration> queryProductionListCondition(ProductRegistration productRegistration);

    /**
     * 新增登记产品
     * @param productRegistration
     */
    void addProduction( ProductRegistration productRegistration);

    /**
     * 修改登记产品
     * @param productRegistration
     */
    void updateProduction( ProductRegistration productRegistration);

    /**
     * 根据产品编号删除登记产品信息
     * @param productionNo
     */
    void deleteProduction(Long productionNo);
}
