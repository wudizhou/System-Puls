package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.SalesOrderBrowseMapper;
import com.zx.erpsystem.system.model.SalesOrderBrowse;
import com.zx.erpsystem.system.service.SalesOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SalesOrderServiceImpl implements SalesOrderService {
    @Autowired
    private SalesOrderBrowseMapper salesOrderBrowseMapper;
    @Override
    public List<SalesOrderBrowse> queryAllSalesOrder() {
        return salesOrderBrowseMapper.queryAllSalesOrder();
    }

    @Override
    public SalesOrderBrowse getsalesOrder(Integer id) {
        return salesOrderBrowseMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateSalesOrder(SalesOrderBrowse salesOrderBrowse) {
        return salesOrderBrowseMapper.updateByPrimaryKeySelective(salesOrderBrowse);
    }

    @Override
    public int deleteSob(Integer sobNo) {
        return salesOrderBrowseMapper.deleteByPrimaryKey(sobNo);
    }

    @Override
    public int insertSalesOrder(SalesOrderBrowse sob) {
        return salesOrderBrowseMapper.insertSelective(sob);
    }

    @Override
    public List<SalesOrderBrowse> querySalesOrderByStatus(String s) {
        return salesOrderBrowseMapper. querySalesOrderByStatus(s);
    }

//    @Override
//    public int sumTQuanity(Map<String, Object> map) {
//        return salesOrderBrowseMapper.sumTQuanity(map);
//    }

    @Override
    public int sumFQuanityByTheFirstDateFor(String h, String f1, String f2) {
        return salesOrderBrowseMapper.sumByTheDateFor(h,f1,f2);
    }
//
    @Override
    public int sumFQuanityByTheSecondDateFor(String h, String f3, String f4) {
        return salesOrderBrowseMapper.sumByTheDateFor(h,f3,f4);
    }

    @Override
    public int sumFQuanityByTheThirdDateFor(String h, String f5, String f6) {
        return salesOrderBrowseMapper.sumByTheDateFor(h,f5,f6);
    }

    @Override
    public int sumFQuanityByTheForthDateFor(String h, String f7, String f8) {
        return salesOrderBrowseMapper.sumByTheDateFor(h,f7,f8);
    }

    @Override
    public int sumXQuanityByTheFirstDateFor(String x, String f1, String f2) {
        return salesOrderBrowseMapper.sumByTheDateFor(x,f1,f2);
    }

    @Override
    public int sumXQuanityByTheSecondDateFor(String x, String f3, String f4) {
        return salesOrderBrowseMapper.sumByTheDateFor(x,f3,f4);
    }

    @Override
    public int sumXQuanityByTheThirdDateFor(String x, String f5, String f6) {
        return salesOrderBrowseMapper.sumByTheDateFor(x,f5,f6);
    }

    @Override
    public int sumXQuanityByTheForthDateFor(String x, String f7, String f8) {
        return salesOrderBrowseMapper.sumByTheDateFor(x,f7,f8);
    }

    @Override
    public int sumPQuanityByTheFirstDateFor(String p, String f1, String f2) {
        return salesOrderBrowseMapper.sumByTheDateFor(p,f1,f2);
    }

    @Override
    public int sumPQuanityByTheSecondDateFor(String p, String f3, String f4) {
        return salesOrderBrowseMapper.sumByTheDateFor(p,f3,f4);
    }

    @Override
    public int sumPQuanityByTheThirdDateFor(String p, String f5, String f6) {
        return salesOrderBrowseMapper.sumByTheDateFor(p,f5,f6);
    }

    @Override
    public int sumPQuanityByTheForthDateFor(String p, String f7, String f8) {
        return salesOrderBrowseMapper.sumByTheDateFor(p,f7,f8);
    }

    @Override
    public int sumVQuanityByTheFirstDateFor(String v, String f1, String f2) {
        return salesOrderBrowseMapper.sumByTheDateFor(v,f1,f2);
    }

    @Override
    public int sumVQuanityByTheSecondDateFor(String v, String f3, String f4) {
        return salesOrderBrowseMapper.sumByTheDateFor(v,f3,f4);
    }

    @Override
    public int sumVQuanityByTheThirdDateFor(String v, String f5, String f6) {
        return salesOrderBrowseMapper.sumByTheDateFor(v,f5,f6);
    }

    @Override
    public int sumVQuanityByTheForthDateFor(String v, String f7, String f8) {
        return salesOrderBrowseMapper.sumByTheDateFor(v,f7,f8);
    }

    @Override
    public List<SalesOrderBrowse> querySalesOrderBySalesOrderDimId(String s2) {
        return salesOrderBrowseMapper.querySalesOrderBySalesOrderDimId(s2);
    }

    @Override
    public List<SalesOrderBrowse> querySalesOrderBySalesOrderDimCoa(String s3) {
        return salesOrderBrowseMapper.querySalesOrderBySalesOrderDimCoa(s3);
    }

    @Override
    public String getsalesOrderStatus(Integer staySalesOrderNo) {
        return salesOrderBrowseMapper.getsalesOrderStatus(staySalesOrderNo) ;
    }

    @Override
    public int querySalesOrderByMounthLyCA(String s2, String ss2) {
        return salesOrderBrowseMapper.querySalesOrderByMounthLyCA(s2,ss2);
    }

    @Override
    public int querySalesOrderByMounthLyBO(String s2, String ss2) {
        return salesOrderBrowseMapper.querySalesOrderByMounthLyBO(s2,ss2);
    }


}
