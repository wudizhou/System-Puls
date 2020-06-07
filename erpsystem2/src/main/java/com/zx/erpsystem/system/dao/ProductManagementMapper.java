package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.ProductManagement;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ProductManagementMapper {
    int deleteByPrimaryKey(Integer productManagementNo);

    int insert(ProductManagement record);

    int insertSelective(ProductManagement record);

    ProductManagement selectByPrimaryKey(Integer productManagementNo);

    int updateByPrimaryKeySelective(ProductManagement record);

    int updateByPrimaryKey(ProductManagement record);

    List<ProductManagement> queryAllProduct();

    List<ProductManagement> queryProductByCondition(Map<String,Object> map);

    List<ProductManagement> queryProductByKeyWord(String value);
}