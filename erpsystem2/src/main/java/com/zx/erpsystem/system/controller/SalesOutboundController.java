package com.zx.erpsystem.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.zx.erpsystem.system.model.SalesOutboundManagement;
import com.zx.erpsystem.system.service.SalesOutboundService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 库存管理模块
 * --销售出库管理
 * @author Zhang Zhou
 * @date 2020-03-12 15:34
 */
@Controller
@Transactional(rollbackFor = Exception.class)
@RequestMapping("/salesOutboundController")
public class SalesOutboundController {
    @Autowired
    SalesOutboundService salesOutboundService;
    private static final String SALESOUTBOUNDSERVICE_LIST ="view/inventoryManagement/saleOutboundManagement/saleOutboundList";
    /**
     * 查询所有领料
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/salesOutboundList.do")
    public String salesOutboundList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                         Model model) {
        System.err.println("------------------productWarehousingList------List-------------------------------------------");
        //从数据库查询所有领料
        List<SalesOutboundManagement> salesOutboundList = salesOutboundService.queryAllSalesOutbound();
        if (salesOutboundList != null) {
            System.err.println("------------------productWarehousingList------List2-------------------------------------------"+salesOutboundList);
            model.addAttribute("SalesOutboundList", salesOutboundList);
        }
        return SALESOUTBOUNDSERVICE_LIST;
    }

    /**
     * 根据路径来将id值传入
     * @param parameter
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/getSalesOutbound.do",method= RequestMethod.POST)
    public JSONObject getSalesOutbound (@RequestParam("id") String parameter) {
        int id2 = Integer.parseInt(parameter);
        System.err.println("------------------getSalesOutbound------List-------------------------------------------"+id2);
        SalesOutboundManagement som= salesOutboundService.getSalesOutbound(id2);
        System.err.println("------------------getSalesOutbound------List-------------------------------------------"+som);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("som",som);
        System.err.println("----------"+jsonObject);
        return jsonObject;
    }

    /**
     * 修改
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/saveSalesOutbound.do",method = RequestMethod.POST)
    public JSONObject saveSalesOutbound(HttpServletRequest request ) {
        String saleOutboundDeliveryOrderNo1=request.getParameter("saleOutboundDeliveryOrderNo");
        System.err.println("------------------saveProductWarehousing------List-------------------------------------------"+saleOutboundDeliveryOrderNo1);
        int saleOutboundDeliveryOrderNo=Integer.parseInt(saleOutboundDeliveryOrderNo1);
        String productName=request.getParameter("productName");
        System.err.println("------------------saveProductWarehousing------List-------------------------------------------"+productName);
        String customerName=request.getParameter("customerName");
        String salesStaff=request.getParameter("salesStaff");
        String productOutboundDeliveryQuantity2=request.getParameter("productOutboundDeliveryQuantity");
        int productOutboundDeliveryQuantity=Integer.parseInt(productOutboundDeliveryQuantity2);
        String productOutboundDeliveryDate1=request.getParameter("productOutboundDeliveryDate");
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date productOutboundDeliveryDate= null;
        try {
            productOutboundDeliveryDate =  sf.parse(productOutboundDeliveryDate1);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
        SalesOutboundManagement som=new  SalesOutboundManagement();
        som.setSaleOutboundDeliveryOrderNo(saleOutboundDeliveryOrderNo);
        som.setProductName(productName);
        som.setCustomerName(customerName);
        som.setSalesStaff(salesStaff);
        som.setProductOutboundDeliveryQuantity(productOutboundDeliveryQuantity);
        som.setProductOutboundDeliveryDate(productOutboundDeliveryDate);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
        System.err.println("------------------saveProductInventory------List-------------------------------------------"+som);
        int n= salesOutboundService.updateSalesOutbound(som);
        if (n==1){
            jsonObject.put("success",success);
            return jsonObject;
        }
        jsonObject.put("false",Isfalse);
        return  jsonObject;
    }

    /**
     * 增加
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/addSalesOutbound.do",method = RequestMethod.POST)
    public JSONObject addSalesOutbound(HttpServletRequest request ) {
        String saleOutboundDeliveryOrderNo1=request.getParameter("saleOutboundDeliveryOrderNo");
        System.err.println("------------------saveProductWarehousing------List-------------------------------------------"+saleOutboundDeliveryOrderNo1);
        int saleOutboundDeliveryOrderNo=Integer.parseInt(saleOutboundDeliveryOrderNo1);
        String productName=request.getParameter("productName");
        System.err.println("------------------saveProductWarehousing------List-------------------------------------------"+productName);
        String customerName=request.getParameter("customerName");
        String salesStaff=request.getParameter("salesStaff");
        String productOutboundDeliveryQuantity2=request.getParameter("productOutboundDeliveryQuantity");
        int productOutboundDeliveryQuantity=Integer.parseInt(productOutboundDeliveryQuantity2);
        String productOutboundDeliveryDate1=request.getParameter("productOutboundDeliveryDate");
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
        Date productOutboundDeliveryDate= null;
        try {
            productOutboundDeliveryDate =  sf.parse(productOutboundDeliveryDate1);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
        SalesOutboundManagement som=new  SalesOutboundManagement();
        som.setSaleOutboundDeliveryOrderNo(saleOutboundDeliveryOrderNo);
        som.setProductName(productName);
        som.setCustomerName(customerName);
        som.setSalesStaff(salesStaff);
        som.setProductOutboundDeliveryQuantity(productOutboundDeliveryQuantity);
        som.setProductOutboundDeliveryDate(productOutboundDeliveryDate);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
        System.err.println("------------------saveProductInventory------List-------------------------------------------"+som);
        int n= salesOutboundService.addSalesOutbound(som);
        if (n==1){
            jsonObject.put("success",success);
            return jsonObject;
        }
        jsonObject.put("false",Isfalse);
        return  jsonObject;
    }

    /**
     * 删除单项
     * @param saleOutboundDeliveryOrderNo
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/salesOutboundDelete.do")
    public String salesOutboundDelete(Integer saleOutboundDeliveryOrderNo, Model model, HttpServletRequest request, HttpServletResponse response) {
        System.err.println("------------------productWarehousingDelete------delete-------------------------------------------");
        //根据id删除所有商品
        int n = salesOutboundService.salesOutboundDelete(saleOutboundDeliveryOrderNo);
        if (n == 1) {
            System.err.println("-----------------删除成功");
        }
        List<SalesOutboundManagement> salesOutboundList = salesOutboundService.queryAllSalesOutbound();
        if (salesOutboundList != null) {
            System.err.println("------------------productWarehousingList------List2-------------------------------------------"+salesOutboundList);
            model.addAttribute("SalesOutboundList", salesOutboundList);
        }
        return SALESOUTBOUNDSERVICE_LIST;
    }
}

