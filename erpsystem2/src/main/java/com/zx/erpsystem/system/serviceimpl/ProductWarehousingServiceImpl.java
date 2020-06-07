package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.ProductWarehousingManagementMapper;
import com.zx.erpsystem.system.model.ProductWarehousingManagement;
import com.zx.erpsystem.system.service.ProductWarehousingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Zhang Zhou
 * @date 2020-03-21 17:33
 */
@Service
public class ProductWarehousingServiceImpl implements ProductWarehousingService {
    @Autowired
    private ProductWarehousingManagementMapper productWarehousingManagementMapper;
    @Override
    public List<ProductWarehousingManagement> queryAllProductWarehousing() {
        return productWarehousingManagementMapper.queryAllProductWarehousing();
    }

    @Override
    public ProductWarehousingManagement getProductWarehousing(int id2) {
        return productWarehousingManagementMapper.selectByPrimaryKey(id2);
    }

    @Override
    public int updateProductWarehousing(ProductWarehousingManagement ptm) {
        return productWarehousingManagementMapper.updateByPrimaryKeySelective(ptm);
    }

    @Override
    public int addProductWarehousing(ProductWarehousingManagement ptm) {
        return productWarehousingManagementMapper.insertSelective(ptm);
    }

    @Override
    public int productWarehousingDeleteByNo(Integer productStorageOrdersNo) {
        return productWarehousingManagementMapper.deleteByPrimaryKey(productStorageOrdersNo);
    }
}

