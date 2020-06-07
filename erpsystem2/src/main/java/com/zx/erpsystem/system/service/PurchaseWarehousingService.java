package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.PurchaseWarehousingManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Zhang Zhou
 * @date 2020-03-23 16:26
 */
@Repository
public interface PurchaseWarehousingService {
    List<PurchaseWarehousingManagement> queryAllPurchaseWarehousing();

    PurchaseWarehousingManagement getPurchaseWarehousing(int id2);

    int updatePurchaseWarehousing(PurchaseWarehousingManagement ptm);

    int addPurchaseWarehousing(PurchaseWarehousingManagement ptm);

    int purchaseWarehousingDeleteByNo(Integer purchaseStorageOrdersNo);
}
