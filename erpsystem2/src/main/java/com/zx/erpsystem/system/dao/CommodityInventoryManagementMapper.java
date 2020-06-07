package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.CommodityInventoryManagement;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface CommodityInventoryManagementMapper {
    int deleteByPrimaryKey(Integer commodityInventoryNo);

    int insert(CommodityInventoryManagement record);

    int insertSelective(CommodityInventoryManagement record);

    CommodityInventoryManagement selectByPrimaryKey(Integer commodityInventoryNo);

    int updateByPrimaryKeySelective(CommodityInventoryManagement record);

    int updateByPrimaryKey(CommodityInventoryManagement record);

    @Select("SELECT count(*) FROM commodity_inventory_management")
    int queyAllCount();

    List<CommodityInventoryManagement> queryAllCommodityInventory2(@Param("i")int i, @Param("ps")int ps);

    int deleteMany(int[] ids);
    @Select("SELECT count(*) FROM commodity_inventory_management where concat(commodity_inventory_no,commodity_name,commodity_price,commodity_inventory_quantity,supplier,procurement_staff,commodity_category) like '%${value}%' ")
    int queyAllCountByValue(String value);

    List<CommodityInventoryManagement> queryAllCommodityInventory2ByValue(@Param("i")int i, @Param("ps")int ps, @Param("value")String value);

    Integer queyAllCountByValue2(Map<String, Object> map);

    List<CommodityInventoryManagement> queryAllCommodityInventory2ByValue2(Map<String, Object> map);
}