package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.SalesOrderBrowse;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SalesOrderBrowseMapper {
    int deleteByPrimaryKey(Integer salesOrderNo);

    int insert(SalesOrderBrowse record);

    int insertSelective(SalesOrderBrowse record);

    SalesOrderBrowse selectByPrimaryKey(Integer salesOrderNo);

    int updateByPrimaryKeySelective(SalesOrderBrowse record);

    int updateByPrimaryKey(SalesOrderBrowse record);

    List<SalesOrderBrowse> queryAllSalesOrder();

    List<SalesOrderBrowse> querySalesOrderByStatus(String s);
    @Select("select COALESCE(SUM(sales_quantity),0)from sales_order_browse  where product_name ='${name}'and sales_status = '已结款' and sales_date >='${riseQuarter}'and sales_date <'${stopQuarter}'")
    int sumByTheDateFor(@Param("name") String name, @Param("riseQuarter")String riseQuarter, @Param("stopQuarter")String stopQuarter);

    List<SalesOrderBrowse> querySalesOrderBySalesOrderDimId(String s2);

    List<SalesOrderBrowse> querySalesOrderBySalesOrderDimCoa(String s3);

    String getsalesOrderStatus(Integer staySalesOrderNo);
    @Select("select COALESCE(SUM(sales_quantity),0)from sales_order_browse  where sales_status = '已结款' and sales_date >=#{0}and sales_date <#{1}")
    int querySalesOrderByMounthLyCA(String s2, String ss2);
    @Select("select COALESCE(SUM(sales_quantity),0)from sales_order_browse  where sales_status = '待发货' and sales_date >=#{0}and sales_date <#{1}")
    int querySalesOrderByMounthLyBO(String s2, String ss2);
//    @Select("select sum(sales_quantity)from sales_order_browse  where product_name ='${name}' and sales_date >='${riseQuarter}'and sales_date <'${stopQuarter}'")
//    int sumTQuanity(Map<String, Object> map);
}