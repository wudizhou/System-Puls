package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.PurchaseWarehousingManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PurchaseWarehousingManagementMapper {
    int deleteByPrimaryKey(Integer purchaseStorageOrdersNo);

    int insert(PurchaseWarehousingManagement record);

    int insertSelective(PurchaseWarehousingManagement record);

    PurchaseWarehousingManagement selectByPrimaryKey(Integer purchaseStorageOrdersNo);

    int updateByPrimaryKeySelective(PurchaseWarehousingManagement record);

    int updateByPrimaryKey(PurchaseWarehousingManagement record);

    List<PurchaseWarehousingManagement> queryAllPurchaseWarehousing();
}