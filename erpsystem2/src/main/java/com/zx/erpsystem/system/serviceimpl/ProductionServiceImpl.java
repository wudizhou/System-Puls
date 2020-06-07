package com.zx.erpsystem.system.serviceimpl;
import com.zx.erpsystem.system.dao.ProductRegistrationMapper;
import com.zx.erpsystem.system.model.ProductRegistration;
import com.zx.erpsystem.system.service.ProductionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author XIANGXIN
 * @date 2020/3/9 - 22:48
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ProductionServiceImpl implements ProductionService {
    @Resource
    ProductRegistrationMapper productRegistrationMapper
            ;
    @Override
    public List<ProductRegistration> queryProductionList() {
        return productRegistrationMapper.queryList();
    }

    @Override
    public List<ProductRegistration> queryProductionListCondition(ProductRegistration productRegistration) {
        return productRegistrationMapper.queryProductionListCondition(productRegistration);
    }

    @Override
    public void addProduction(ProductRegistration productRegistration) {
         productRegistrationMapper.insert(productRegistration);
    }

    @Override
    public void updateProduction(ProductRegistration productRegistration) {
        productRegistrationMapper.updateByPrimaryKey(productRegistration);
    }

    @Override
    public void deleteProduction(Long productionNo) {
       productRegistrationMapper.deleteById(productionNo);
    }
}
