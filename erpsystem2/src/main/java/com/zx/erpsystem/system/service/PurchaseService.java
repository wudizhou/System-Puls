package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.PurchaseSublist;
import com.zx.erpsystem.system.model.PurchasingManagement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author XIANGXIN
 * @date 2020/3/27 - 11:42
 */
public interface PurchaseService {

    /**
     * 根据采购单编号查询采购单商品
     * @param purchaseId
     * @return
     */
    public List<PurchaseSublist> queryCommoditiesByPurchaseId(Long purchaseId);

    /**
     * 新增采购单
     * @param purchasingManagement
     */
    public void addPurchase(PurchasingManagement purchasingManagement);

    /**
     * 删除采购单
     * @param id
     */
    public void deletePurchase( Long id);

    /**
     * 修改采购单
     * @param purchasingManagement
     */
    public void updatePurchase( PurchasingManagement purchasingManagement);

    /**
     * 查询所有采购单（）
     * @param
     */
    public List<PurchasingManagement> queryPurchase(PurchasingManagement purchasingManagement);

    /**
     * 新增采购单商品
     * @param purchaseSublist
     */
    public void addPurchaseCommodity(PurchaseSublist purchaseSublist);

    /**
     * 删除采购单商品
     * @param id
     */
    public void deletePurchaseCommodity( Long id);

    /**
     * 修改采购单商品
     * @param purchaseSublist
     */
    public void updatePurchaseCommodity(PurchaseSublist purchaseSublist);

    /**
     * 展示采购页面数据处理
     */
    public  void showPurchaseOrder(HttpServletRequest request, PurchaseSublist purchaseSublist);
}
