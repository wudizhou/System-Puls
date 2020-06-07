package com.zx.erpsystem.system.dao;
import com.zx.erpsystem.system.model.CommodityManagement;
import org.springframework.stereotype.Repository;
import java.util.List;
@Repository
public interface CommodityManagementMapper {
    int deleteByPrimaryKey(Integer commodityManagementNo);

    int insert(CommodityManagement record);

    int insertSelective(CommodityManagement record);

    CommodityManagement selectByPrimaryKey(Integer commodityManagementNo);

    int updateByPrimaryKeySelective(CommodityManagement record);

    int updateByPrimaryKey(CommodityManagement record);

    List<CommodityManagement> queryAllCommodity();

    List<CommodityManagement> queryCommodityByCommodityDimId(String s2);

    List<CommodityManagement> queryCommodityByCommodityDimCoa(String s3);
}