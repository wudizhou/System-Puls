package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.ProductWarehousingManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductWarehousingManagementMapper {
    int deleteByPrimaryKey(Integer productStorageOrdersNo);

    int insert(ProductWarehousingManagement record);

    int insertSelective(ProductWarehousingManagement record);

    ProductWarehousingManagement selectByPrimaryKey(Integer productStorageOrdersNo);

    int updateByPrimaryKeySelective(ProductWarehousingManagement record);

    int updateByPrimaryKey(ProductWarehousingManagement record);

    List<ProductWarehousingManagement> queryAllProductWarehousing();
}