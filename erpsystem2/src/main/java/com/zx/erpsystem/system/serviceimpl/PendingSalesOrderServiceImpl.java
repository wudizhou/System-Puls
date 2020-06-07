package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.PendingSalesOrderMapper;
import com.zx.erpsystem.system.model.PendingSalesOrder;
import com.zx.erpsystem.system.service.PendingSalesOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PendingSalesOrderServiceImpl implements PendingSalesOrderService {
    @Autowired
    private PendingSalesOrderMapper pendingSalesOrderMapper;
    @Override
    public PendingSalesOrder queryPendingSalesOrderByNo(Integer salesOrderNo) {
        return pendingSalesOrderMapper.selectByPrimaryKey(salesOrderNo);
    }

    @Override
    public int addPendingSalesOrder(PendingSalesOrder pso) {
        return pendingSalesOrderMapper.insertSelective(pso);
    }

    @Override
    public List<PendingSalesOrder> queryAllSalrsOrder() {
        return pendingSalesOrderMapper.queryAllSalrsOrder();
    }

    @Override
    public int deletePendingSalesOrder(Integer staySalesOrderNo) {
        return pendingSalesOrderMapper.deleteByPrimaryKey(staySalesOrderNo);
    }
}
