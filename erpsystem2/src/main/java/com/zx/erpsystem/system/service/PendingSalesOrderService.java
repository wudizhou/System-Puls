package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.PendingSalesOrder;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PendingSalesOrderService {
    PendingSalesOrder queryPendingSalesOrderByNo(Integer salesOrderNo);

    int addPendingSalesOrder(PendingSalesOrder pso);

    List<PendingSalesOrder> queryAllSalrsOrder();

    int deletePendingSalesOrder(Integer staySalesOrderNo);
}
