package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.ProductInventoryManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Zhang Zhou
 * @date 2020-03-21 16:04
 */
@Repository
public interface ProductInventoryService {
    List<ProductInventoryManagement> queryAllproductInventory();

    ProductInventoryManagement getProductInventory(int id2);

    int updateProductInventory(ProductInventoryManagement pim);

    int addProductInventory(ProductInventoryManagement pim);

    int productInventoryDeleteByNo(Integer productInventoryNo);
}
