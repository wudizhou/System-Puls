package com.zx.erpsystem.system.controller;

import com.zx.erpsystem.system.model.PendingSalesOrder;
import com.zx.erpsystem.system.model.SalesOrderBrowse;
import com.zx.erpsystem.system.service.PendingSalesOrderService;
import com.zx.erpsystem.system.service.SalesOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/**
 * 销售管理模块
 * @author  Zhang zhou
 * @date 2020-03-09 09:17
 */
@Controller
@RequestMapping("/pendingSalesOrderController")
public class PendingSalesOrderController{
    @Autowired
    private SalesOrderService salesOrderService;
    @Autowired
    private PendingSalesOrderService pendingSalesOrderService;

    /**
     * 逻辑操作
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/pendingSalesOrderList.do")
    public String pendingSalesOrderList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                 Model model){
        System.err.println("------------------pendingSalesOrderListController------List-------------------------------------------");
        //查询字段为待发货的记录
        String s ="待发货";
        List<SalesOrderBrowse> sob=salesOrderService.querySalesOrderByStatus(s);
        //建立集合，存放PendingSalesOrder对象
        List<PendingSalesOrder> pso = new ArrayList<>();
        //建立PendingSalesOrder对象
        PendingSalesOrder pso2 = new PendingSalesOrder();
        //迭代器遍历SalesOrderBrowse集合
        Iterator<SalesOrderBrowse> it = sob.iterator();
        while (it.hasNext()) {
                SalesOrderBrowse sob2 = (SalesOrderBrowse) it.next();
                //得到SalesOrderBrowse对象关键属性
            sob2.getSalesOrderNo();
            sob2.getProductName();
            sob2.getCustomerName();
            sob2.getSalesQuantity();
            //为PendingSalesOrder对象设置关键属性
            pso2.setCustomerName(sob2.getCustomerName());
            pso2.setProductName(sob2.getProductName());
            pso2.setSalesQuantity(sob2.getSalesQuantity());
            pso2.setStaySalesOrderNo(sob2.getSalesOrderNo());
            //添加进PendingSalesOrder集合
            pso.add(pso2);
        }
        if (pso != null) {
            model.addAttribute("pendingSalesOrderList",pso);
        }
        return "view/salesmanagement/pendingSalesOrder/pendingSalesOrderList";
    }

    /**
     * 物理操作
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/pendingSalesOrderListPhy.do")
    public String pendingSalesOrderListPhy(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                        Model model){
        System.err.println("------------------pendingSalesOrderList2Controller------List-------------------------------------------");
        //查询字段为待发货的记录
        String s ="待发货";
        List<SalesOrderBrowse> sob=salesOrderService.querySalesOrderByStatus(s);
        //迭代器遍历SalesOrderBrowse集合
        Iterator<SalesOrderBrowse> it = sob.iterator();
        while (it.hasNext()) {
            SalesOrderBrowse sob2 = (SalesOrderBrowse) it.next();
            //得到SalesOrderBrowse对象关键属性
            sob2.getSalesOrderNo();
            sob2.getProductName();
            sob2.getCustomerName();
            sob2.getSalesQuantity();
        //在待销售订单查询并判断是否有记录
        PendingSalesOrder Ispso=pendingSalesOrderService.queryPendingSalesOrderByNo(sob2.getSalesOrderNo());
        if(Ispso==null) {
            PendingSalesOrder pso = new PendingSalesOrder();
            pso.setCustomerName(sob2.getCustomerName());
            pso.setProductName(sob2.getProductName());
            pso.setSalesQuantity(sob2.getSalesQuantity());
            pso.setStaySalesOrderNo(sob2.getSalesOrderNo());
            //如果记录为空 则插入记录
            int n = pendingSalesOrderService.addPendingSalesOrder(pso);
        }
    }
        //迭代器遍历PendingSalesOrder集合
        List<PendingSalesOrder> pso2= pendingSalesOrderService.queryAllSalrsOrder();
        Iterator<PendingSalesOrder> it2 = pso2.iterator();
        while(it2.hasNext()){
            PendingSalesOrder pso3 =(PendingSalesOrder) it2.next();
            //根据订单编号在销售单查询其状态并判断是否为已结款
            System.err.println("------------------pendingSalesOrderList2Controller------List------------"+pso3.getStaySalesOrderNo());
            String status=salesOrderService.getsalesOrderStatus(pso3.getStaySalesOrderNo());
            System.err.println("------------------pendingSalesOrderList2Controller------List------------"+status);
            if(status.equals("已结款")){
                //为已结款则删除该记录
                System.err.println("------------------pendingSalesOrderList2Controller------List------------"+pso3.getStaySalesOrderNo());
                int no=pendingSalesOrderService.deletePendingSalesOrder(pso3.getStaySalesOrderNo());
                if(no==1){
                    System.err.println("------------------删除成功！------------");
                }
            }
        }
        if (pso2 != null) {
            model.addAttribute("pendingSalesOrderList",pso2);
        }
        return "view/salesmanagement/pendingSalesOrder/pendingSalesOrderList";
    }
    @RequestMapping(value = "/pendingSalesOrderListPhy2.do")
    public String pendingSalesOrderListPhy2(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                           Model model){
        System.err.println("------------------pendingSalesOrderList2Controller------List-------------------------------------------");
        //迭代器遍历PendingSalesOrder集合
        List<PendingSalesOrder> pso2= pendingSalesOrderService.queryAllSalrsOrder();
        if (pso2 != null) {
            model.addAttribute("pendingSalesOrderList",pso2);
        }
        return "view/salesmanagement/pendingSalesOrder/pendingSalesOrderList";
    }

}

