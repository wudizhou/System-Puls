package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.ProductInventoryManagementMapper;
import com.zx.erpsystem.system.model.ProductInventoryManagement;
import com.zx.erpsystem.system.service.ProductInventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Zhang Zhou
 * @date 2020-03-21 16:04
 */
@Service
public class ProductInventoryServiceImpl implements ProductInventoryService {
    @Autowired
    private ProductInventoryManagementMapper productInventoryManagementMapper;
    @Override
    public List<ProductInventoryManagement> queryAllproductInventory() {
        return productInventoryManagementMapper.queryAllproductInventory();
    }

    @Override
    public ProductInventoryManagement getProductInventory(int id2) {
        return productInventoryManagementMapper.selectByPrimaryKey(id2);
    }

    @Override
    public int updateProductInventory(ProductInventoryManagement pim) {
        return productInventoryManagementMapper.updateByPrimaryKeySelective(pim);
    }

    @Override
    public int addProductInventory(ProductInventoryManagement pim) {
        return productInventoryManagementMapper.insertSelective(pim);
    }

    @Override
    public int productInventoryDeleteByNo(Integer productInventoryNo) {
        return productInventoryManagementMapper.deleteByPrimaryKey(productInventoryNo);
    }
}
