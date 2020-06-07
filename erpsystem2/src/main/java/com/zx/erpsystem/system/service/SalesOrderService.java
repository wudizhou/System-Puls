package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.SalesOrderBrowse;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SalesOrderService {

    List<SalesOrderBrowse> queryAllSalesOrder();

    SalesOrderBrowse getsalesOrder(Integer id);

    int updateSalesOrder(SalesOrderBrowse salesOrderBrowse);

    int deleteSob(Integer sobNo);

    int insertSalesOrder(SalesOrderBrowse sob);

    List<SalesOrderBrowse> querySalesOrderByStatus(String s);

    int sumFQuanityByTheFirstDateFor(String h, String f1, String f2);

//      int sumTQuanity(Map<String, Object> map);

    int sumFQuanityByTheSecondDateFor(String h, String f3, String f4);

    int sumFQuanityByTheThirdDateFor(String h, String f5, String f6);

    int sumFQuanityByTheForthDateFor(String h, String f7, String f8);

    int sumXQuanityByTheFirstDateFor(String x, String f1, String f2);

    int sumXQuanityByTheSecondDateFor(String x, String f3, String f4);

    int sumXQuanityByTheThirdDateFor(String x, String f5, String f6);

    int sumXQuanityByTheForthDateFor(String x, String f7, String f8);

    int sumPQuanityByTheFirstDateFor(String p, String f1, String f2);

    int sumPQuanityByTheSecondDateFor(String p, String f3, String f4);

    int sumPQuanityByTheThirdDateFor(String p, String f5, String f6);

    int sumPQuanityByTheForthDateFor(String p, String f7, String f8);

    int sumVQuanityByTheFirstDateFor(String v, String f1, String f2);

    int sumVQuanityByTheSecondDateFor(String v, String f3, String f4);

    int sumVQuanityByTheThirdDateFor(String v, String f5, String f6);

    int sumVQuanityByTheForthDateFor(String v, String f7, String f8);

    List<SalesOrderBrowse> querySalesOrderBySalesOrderDimId(String s2);

    List<SalesOrderBrowse> querySalesOrderBySalesOrderDimCoa(String s3);

    String getsalesOrderStatus(Integer staySalesOrderNo);

    int querySalesOrderByMounthLyCA(String s2, String ss2);

    int querySalesOrderByMounthLyBO(String s2, String ss2);


}
