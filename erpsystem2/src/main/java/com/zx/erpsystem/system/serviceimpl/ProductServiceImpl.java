package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.ProductManagementMapper;
import com.zx.erpsystem.system.model.ProductManagement;
import com.zx.erpsystem.system.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductManagementMapper productManagementMapper;
    @Override
    public List<ProductManagement> queryAllProduct() {
        return productManagementMapper.queryAllProduct();
    }

    @Override
    public int addProduct(ProductManagement pm) {
        return productManagementMapper.insertSelective(pm);
    }

    @Override
    public int deleteProductByNo(Integer productManagementNo) {
        return productManagementMapper.deleteByPrimaryKey(productManagementNo);
    }

    @Override
    public int updateProductByNo(ProductManagement pm) {
        return productManagementMapper.updateByPrimaryKeySelective(pm);
    }

    @Override
    public List<ProductManagement> queryProductByCondition( Map<String,Object> map) {
        return productManagementMapper.queryProductByCondition(map);
    }

    @Override
    public List<ProductManagement> queryProductByKeyWord(String value) {
        return productManagementMapper.queryProductByKeyWord(value);
    }
}
