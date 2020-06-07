package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.PickingOutboundManagementMapper;
import com.zx.erpsystem.system.model.PickingOutboundManagement;
import com.zx.erpsystem.system.service.PickingOutboundService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Zhang Zhou
 * @date 2020-03-18 15:36
 */
@Service
public class PickingOutboundServiceImpl implements PickingOutboundService {
    @Autowired
    private PickingOutboundManagementMapper pickingOutboundManagementMapper;
    @Override
    public List<PickingOutboundManagement> queryAllpickingOutbound() {
        return pickingOutboundManagementMapper.queryAllpickingOutbound() ;
    }

    @Override
    public PickingOutboundManagement getPickingOutbound(int id2) {
        return pickingOutboundManagementMapper.selectByPrimaryKey(id2);
    }

    @Override
    public int updatePickingOutbound(PickingOutboundManagement pob) {
        return pickingOutboundManagementMapper.updateByPrimaryKeySelective(pob);
    }

    @Override
    public int addPickingOutbound(PickingOutboundManagement pob) {
        return pickingOutboundManagementMapper.insertSelective(pob);
    }

    @Override
    public int pickingOutboundDeleteByNo(Integer pickingOutboundNo) {
        return pickingOutboundManagementMapper.deleteByPrimaryKey(pickingOutboundNo);
    }
}
