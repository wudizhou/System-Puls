package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.ProductInventoryManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductInventoryManagementMapper {
    int deleteByPrimaryKey(Integer productInventoryNo);

    int insert(ProductInventoryManagement record);

    int insertSelective(ProductInventoryManagement record);

    ProductInventoryManagement selectByPrimaryKey(Integer productInventoryNo);

    int updateByPrimaryKeySelective(ProductInventoryManagement record);

    int updateByPrimaryKey(ProductInventoryManagement record);

    List<ProductInventoryManagement> queryAllproductInventory();
}