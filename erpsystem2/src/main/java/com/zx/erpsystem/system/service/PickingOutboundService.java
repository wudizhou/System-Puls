package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.PickingOutboundManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Zhang Zhou
 * @date 2020-03-18 15:35
 */
@Repository
public interface PickingOutboundService {

    List<PickingOutboundManagement> queryAllpickingOutbound();

    PickingOutboundManagement getPickingOutbound(int id2);

    int updatePickingOutbound(PickingOutboundManagement pob);

    int addPickingOutbound(PickingOutboundManagement pob);

    int pickingOutboundDeleteByNo(Integer pickingOutboundNo);
}
