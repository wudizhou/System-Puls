package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.PurchaseWarehousingManagementMapper;
import com.zx.erpsystem.system.model.PurchaseWarehousingManagement;
import com.zx.erpsystem.system.service.PurchaseWarehousingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Zhang Zhou
 * @date 2020-03-23 16:26
 */
@Repository
public class PurchaseWarehousingServiceImpl implements PurchaseWarehousingService {
    @Autowired
    private PurchaseWarehousingManagementMapper purchaseWarehousingManagementMapper;
    @Override
    public List<PurchaseWarehousingManagement> queryAllPurchaseWarehousing() {
        return purchaseWarehousingManagementMapper.queryAllPurchaseWarehousing();
    }

    @Override
    public PurchaseWarehousingManagement getPurchaseWarehousing(int id2) {
        return purchaseWarehousingManagementMapper.selectByPrimaryKey(id2);
    }

    @Override
    public int updatePurchaseWarehousing(PurchaseWarehousingManagement ptm) {
        return purchaseWarehousingManagementMapper.updateByPrimaryKeySelective(ptm);
    }

    @Override
    public int addPurchaseWarehousing(PurchaseWarehousingManagement ptm) {
        return purchaseWarehousingManagementMapper.insertSelective(ptm);
    }

    @Override
    public int purchaseWarehousingDeleteByNo(Integer purchaseStorageOrdersNo) {
        return purchaseWarehousingManagementMapper.deleteByPrimaryKey(purchaseStorageOrdersNo);
    }
}
