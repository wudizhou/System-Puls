package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.SalesStatement;

public interface SalesStatementMapper {
    int deleteByPrimaryKey(Integer salesOrderNo);

    int insert(SalesStatement record);

    int insertSelective(SalesStatement record);

    SalesStatement selectByPrimaryKey(Integer salesOrderNo);

    int updateByPrimaryKeySelective(SalesStatement record);

    int updateByPrimaryKey(SalesStatement record);
}