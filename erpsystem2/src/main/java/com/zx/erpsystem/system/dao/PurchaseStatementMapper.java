package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.PurchaseStatement;

public interface PurchaseStatementMapper {
    int deleteByPrimaryKey(Integer purchaseCounterNo);

    int insert(PurchaseStatement record);

    int insertSelective(PurchaseStatement record);

    PurchaseStatement selectByPrimaryKey(Integer purchaseCounterNo);

    int updateByPrimaryKeySelective(PurchaseStatement record);

    int updateByPrimaryKey(PurchaseStatement record);
}