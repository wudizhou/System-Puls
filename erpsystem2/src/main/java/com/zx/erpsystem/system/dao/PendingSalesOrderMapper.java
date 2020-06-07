package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.PendingSalesOrder;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PendingSalesOrderMapper {
    int deleteByPrimaryKey(Integer staySalesOrderNo);

    int insert(PendingSalesOrder record);

    int insertSelective(PendingSalesOrder record);

    PendingSalesOrder selectByPrimaryKey(Integer staySalesOrderNo);

    int updateByPrimaryKeySelective(PendingSalesOrder record);

    int updateByPrimaryKey(PendingSalesOrder record);

    List<PendingSalesOrder> queryAllSalrsOrder();
}