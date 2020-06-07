package com.zx.erpsystem.system.serviceimpl;
import com.zx.erpsystem.system.dao.PurchaseSublistMapper;
import com.zx.erpsystem.system.dao.PurchasingManagementMapper;
import com.zx.erpsystem.system.model.PurchaseSublist;
import com.zx.erpsystem.system.model.PurchasingManagement;
import com.zx.erpsystem.system.service.PurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author XIANGXIN
 * @date 2020/3/27 - 11:42
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class PurchaseServiceImpl implements PurchaseService {
    @Autowired
    PurchaseSublistMapper purchaseSublistMapper;
    @Autowired
    PurchasingManagementMapper purchasingManagementMapper;

    @Override
    public List<PurchaseSublist> queryCommoditiesByPurchaseId(Long purchaseId) {
        return purchaseSublistMapper.queryCommoditiesByPurchaseId(purchaseId);
    }

    @Override
    public void addPurchase(PurchasingManagement purchasingManagement) {
        purchasingManagementMapper.insert(purchasingManagement);
    }

    @Override
    public void deletePurchase(Long id) {
        purchasingManagementMapper.deleteById(id);
    }

    @Override
    public void updatePurchase(PurchasingManagement purchasingManagement) {
        purchasingManagementMapper.update(purchasingManagement);
    }

    @Override
    public List<PurchasingManagement> queryPurchase(PurchasingManagement purchasingManagement) {
       return purchasingManagementMapper.queryAll(purchasingManagement);
    }

    @Override
    public void addPurchaseCommodity(PurchaseSublist purchaseSublist) {
        purchaseSublistMapper.insert(purchaseSublist);
    }

    @Override
    public void deletePurchaseCommodity(Long id) {
        purchaseSublistMapper.deleteById(id);
    }

    @Override
    public void updatePurchaseCommodity(PurchaseSublist purchaseSublist) {
        purchaseSublistMapper.update(purchaseSublist);
    }

    @Override
    public void showPurchaseOrder(HttpServletRequest request, PurchaseSublist purchaseSublist) {
        Long purchaseId = purchaseSublist.getPurchaseId();
        if(purchaseId!=null){
            PurchasingManagement purchasingManagement = new PurchasingManagement();
            purchasingManagement.setId(purchaseId);
            List<PurchasingManagement> purchasList = queryPurchase(purchasingManagement);
            //回显采购单信息
            request.setAttribute("purchaseId",purchasList.get(0).getId());
            request.setAttribute("purchaseExplain",purchasList.get(0).getPurchaseExplain());
            request.setAttribute("buyer",purchasList.get(0).getBuyer());
        }
        //查询采购单所有商品
        List<PurchaseSublist> CommodityList = queryCommoditiesByPurchaseId(purchaseId);
        request.setAttribute("CommodityList",CommodityList);
    }

}
