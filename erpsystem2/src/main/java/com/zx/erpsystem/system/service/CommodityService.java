package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.CommodityManagement;

import java.util.List;

public interface CommodityService {

    List<CommodityManagement> queryAllCommodity();

    int deleteCommdityByNo(Integer commodityManagementNo);

    CommodityManagement queryCommodityByCommodityId(int commoditylId);

    int updateCommodityByNo(CommodityManagement cm);

    List<CommodityManagement> queryCommodityByCommodityDimId(String s2);

    List<CommodityManagement> queryCommodityByCommodityDimCoa(String s3);

    int addCommodityByNo(CommodityManagement cm);
}
