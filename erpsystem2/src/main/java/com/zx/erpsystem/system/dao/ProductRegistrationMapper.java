package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.ProductRegistration;
import org.springframework.stereotype.Repository;
import java.util.List;
/**
 * @author Xin
 */
@Repository
public interface ProductRegistrationMapper {

    int deleteByPrimaryKey(Integer productionNo);

    int deleteById(Long productionNo);

    int insert(ProductRegistration record);

    int insertSelective(ProductRegistration record);

    ProductRegistration selectByPrimaryKey(Integer productionNo);

    int updateByPrimaryKeySelective(ProductRegistration record);

    int updateByPrimaryKey(ProductRegistration record);

    /**
     * 查询所有生产登记产品
     * @return
     */
    List<ProductRegistration> queryList();

    /**
     * 条件查询产品信息列表
     * @param productRegistration
     * @return
     */
    List<ProductRegistration> queryProductionListCondition(ProductRegistration productRegistration);
}