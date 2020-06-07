package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.ProductManagement;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ProductService {
    List<ProductManagement> queryAllProduct();

    int addProduct(ProductManagement pm);

    int deleteProductByNo(Integer productManagementNo);

    int updateProductByNo(ProductManagement pm);

    List<ProductManagement> queryProductByCondition(Map<String,Object> map);

    List<ProductManagement> queryProductByKeyWord(String value);
}
