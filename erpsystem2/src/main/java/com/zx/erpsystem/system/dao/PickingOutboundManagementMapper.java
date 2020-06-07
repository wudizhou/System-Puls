package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.PickingOutboundManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PickingOutboundManagementMapper {
    int deleteByPrimaryKey(Integer pickingOutboundDeliveryOrderNo);

    int insert(PickingOutboundManagement record);

    int insertSelective(PickingOutboundManagement record);

    PickingOutboundManagement selectByPrimaryKey(Integer pickingOutboundDeliveryOrderNo);

    int updateByPrimaryKeySelective(PickingOutboundManagement record);

    int updateByPrimaryKey(PickingOutboundManagement record);

    List<PickingOutboundManagement> queryAllpickingOutbound();
}