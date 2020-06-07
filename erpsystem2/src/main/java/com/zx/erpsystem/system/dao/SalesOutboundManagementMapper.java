package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.SalesOutboundManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Zhang Zhou
 * @date 2020-03-18 14:36
 */
@Repository
public interface SalesOutboundManagementMapper {

    int deleteByPrimaryKey(Integer saleOutboundDeliveryOrderNo);

    int insert(SalesOutboundManagement record);

    int insertSelective(SalesOutboundManagement record);

    SalesOutboundManagement selectByPrimaryKey(Integer saleOutboundDeliveryOrderNo);

    int updateByPrimaryKeySelective(SalesOutboundManagement record);

    int updateByPrimaryKey(SalesOutboundManagement record);

    List<SalesOutboundManagement> queryAllSalesOutbound();
}
