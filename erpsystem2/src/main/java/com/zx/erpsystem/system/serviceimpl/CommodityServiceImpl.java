package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.CommodityManagementMapper;
import com.zx.erpsystem.system.model.CommodityManagement;
import com.zx.erpsystem.system.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class CommodityServiceImpl implements CommodityService {
    @Autowired
    private CommodityManagementMapper commodityManagementMapper;

    @Override
    public List<CommodityManagement> queryAllCommodity() {
        return commodityManagementMapper. queryAllCommodity();
    }

    @Override
    public int deleteCommdityByNo(Integer commodityManagementNo) {
        return commodityManagementMapper.deleteByPrimaryKey(commodityManagementNo);
    }

    @Override
    public CommodityManagement queryCommodityByCommodityId(int commoditylId) {
        return commodityManagementMapper.selectByPrimaryKey(commoditylId);
    }

    @Override
    public int updateCommodityByNo(CommodityManagement cm) {
        return commodityManagementMapper.updateByPrimaryKeySelective(cm);
    }

    @Override
    public List<CommodityManagement> queryCommodityByCommodityDimId(String s2) {
        return commodityManagementMapper.queryCommodityByCommodityDimId(s2);
    }

    @Override
    public List<CommodityManagement> queryCommodityByCommodityDimCoa(String s3) {
        return commodityManagementMapper.queryCommodityByCommodityDimCoa(s3);
    }

    @Override
    public int addCommodityByNo(CommodityManagement cm) {
        return commodityManagementMapper.insertSelective(cm);
    }
}
