package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.CommodityInventoryManagement;
import com.zx.erpsystem.system.utils.pagingUtil.PageBean;
import org.springframework.stereotype.Repository;

import java.util.Map;

/**
 * @author Zhang Zhou
 * @date 2020-03-13 11:27
 */
@Repository
public interface CommodityInventoryService {
    PageBean<CommodityInventoryManagement> queryAllCommodityInventory(int pc, int ps);
    int queyAllCount();

    int deleteMany(int[] ids);

    int deletecommodityInventoryByNo(Integer commodityInventoryNo);

    CommodityInventoryManagement getsalesOrder(int id2);

    int updatecommodityInventory(CommodityInventoryManagement cim);

    int addcommodityInventory(CommodityInventoryManagement cim);

    PageBean<CommodityInventoryManagement> queryAllCommodityInventoryByKeWords(int pc, int ps, String value);

    PageBean<CommodityInventoryManagement> queryAllCommodityInventoryByKeWords2(Map<String, Object> map);
}
