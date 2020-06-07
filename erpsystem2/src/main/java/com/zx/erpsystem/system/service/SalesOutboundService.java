package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.SalesOutboundManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Zhang Zhou
 * @date 2020-03-23 16:27
 */
@Repository
public interface SalesOutboundService {
    List<SalesOutboundManagement> queryAllSalesOutbound();

    SalesOutboundManagement getSalesOutbound(int id2);

    int updateSalesOutbound(SalesOutboundManagement som);

    int addSalesOutbound(SalesOutboundManagement som);

    int salesOutboundDelete(Integer saleOutboundDeliveryOrderNo);
}
