package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.ProductPickingManagement;

public interface ProductPickingManagementMapper {
    int deleteByPrimaryKey(Integer pickingOrdersNo);

    int insert(ProductPickingManagement record);

    int insertSelective(ProductPickingManagement record);

    ProductPickingManagement selectByPrimaryKey(Integer pickingOrdersNo);

    int updateByPrimaryKeySelective(ProductPickingManagement record);

    int updateByPrimaryKey(ProductPickingManagement record);
}