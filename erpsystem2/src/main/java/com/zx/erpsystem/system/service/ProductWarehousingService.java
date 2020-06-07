package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.ProductWarehousingManagement;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Zhang Zhou
 * @date 2020-03-21 17:33
 */
@Repository
public interface ProductWarehousingService {
    List<ProductWarehousingManagement> queryAllProductWarehousing();

    ProductWarehousingManagement getProductWarehousing(int id2);

    int updateProductWarehousing(ProductWarehousingManagement ptm);

    int addProductWarehousing(ProductWarehousingManagement ptm);

    int productWarehousingDeleteByNo(Integer productStorageOrdersNo);
}
