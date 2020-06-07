package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.SalesOutboundManagementMapper;
import com.zx.erpsystem.system.model.SalesOutboundManagement;
import com.zx.erpsystem.system.service.SalesOutboundService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Zhang Zhou
 * @date 2020-03-23 16:27
 */
@Repository
public class SalesOutboundServiceImpl implements SalesOutboundService {
    @Autowired
    private SalesOutboundManagementMapper salesOutboundManagementMapper;
    @Override
    public List<SalesOutboundManagement> queryAllSalesOutbound() {
        return salesOutboundManagementMapper.queryAllSalesOutbound();
    }

    @Override
    public SalesOutboundManagement getSalesOutbound(int id2) {
        return salesOutboundManagementMapper.selectByPrimaryKey(id2);
    }

    @Override
    public int updateSalesOutbound(SalesOutboundManagement som) {
        return salesOutboundManagementMapper.updateByPrimaryKeySelective(som);
    }

    @Override
    public int addSalesOutbound(SalesOutboundManagement som) {
        return salesOutboundManagementMapper.insertSelective(som);
    }

    @Override
    public int salesOutboundDelete(Integer saleOutboundDeliveryOrderNo) {
        return salesOutboundManagementMapper.deleteByPrimaryKey(saleOutboundDeliveryOrderNo);
    }
}
