package com.zx.erpsystem.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.zx.erpsystem.system.model.SalesOrderBrowse;
import com.zx.erpsystem.system.service.SalesOrderService;
import com.zx.erpsystem.system.utils.util.JudgeNC;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
 * 销售管理模块
 * @author  Zhang zhou
 * @date 2020-03-09 09:17
 */
@Controller
@RequestMapping("/salesOrderBrowseController")
public class SalesOrderBrowseController {
    @Autowired
    private SalesOrderService salesOrderService;
    @RequestMapping(value = "/salesOrderList.do")
    public String salesOrderList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                        Model model){
        System.err.println("------------------salesOrderController------List-------------------------------------------");
        //从数据库查询所有商品
        List<SalesOrderBrowse> salesOrderList = salesOrderService.queryAllSalesOrder();
        if (salesOrderList != null) {
            model.addAttribute("salesOrderList",salesOrderList);
        }
        return "view/salesmanagement/salesOrderBrowse/saleOrderList";
    }
    //得到销售订单信息
//    @ResponseBody
//    @RequestMapping(value="/getSalesOrder/{id}",method=RequestMethod.GET)
//    //根据路径来将id值传入
//    public Message getSalesOrder (@PathVariable("id") Integer id) {
//       SalesOrderBrowse sob = salesOrderService.getsalesOrder(id);
//       System.err.println("------------------salesOrderController------List-------------------------------------------"+sob);
//       return Message.success().add("sob",sob);
//    }
    @ResponseBody
    @RequestMapping(value="/getSalesOrder.do",method=RequestMethod.POST)
    //根据路径来将id值传入
    public JSONObject getSalesOrder (@RequestParam("id") String parameter) {
        int id2 = Integer.parseInt(parameter);
        SalesOrderBrowse sob = salesOrderService.getsalesOrder(id2);
        System.err.println("------------------salesOrderController------List-------------------------------------------"+sob);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("sob",sob);
        System.err.println("----------"+jsonObject);
        return jsonObject;
    }
    /**
     * 在tomcat中不会封装PUT请求，用ajax发送请求时不可以直接用type：PUT对数据进行传递
     * 解决方案：1、在data上后面加上+"&_method=PUT"，将POST请求转为PUT请求
     *          2、 用springMVC里封装的方法进行拦截,在web.xml上配置拦截属性
     * @param
     * @return
     */
    //保存更新的销售单信息
    @ResponseBody
    @RequestMapping(value = "/saveSalesOrder.do",method = RequestMethod.POST)
    public JSONObject saveSalesOrder(HttpServletRequest request ) {
        String salesOrderNo1=request.getParameter("salesOrderNo");
        System.err.println("------------------salesOrderController------List-------------------------------------------"+salesOrderNo1);
        int salesOrderNo=Integer.parseInt(salesOrderNo1);
        String productName=request.getParameter("productName");
        String customerName=request.getParameter("customerName");
        String salesQuantity2=request.getParameter("salesQuantity");
        int salesQuantity=Integer.parseInt(salesQuantity2);
        String salesDate2=request.getParameter("salesDate");
        String salesStatus=request.getParameter("salesStatus");
        SalesOrderBrowse sob=new SalesOrderBrowse();
        sob.setCustomerName(customerName);
        sob.setProductName(productName);
        //字符串转日期格式
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
        Date salesDate = null;
        try {
            salesDate =  sf.parse(salesDate2);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
        sob.setSalesDate(salesDate);
        sob.setSalesOrderNo(salesOrderNo);
        sob.setSalesStatus(salesStatus);
        sob.setSalesQuantity(salesQuantity);
        int n=salesOrderService.updateSalesOrder(sob);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
        if (n==1){
            jsonObject.put("success",success);
            return jsonObject;
        }
        jsonObject.put("false",Isfalse);
        return  jsonObject;
    }
    //删除所选商品
    @RequestMapping(value = "/salesOrderDelete.do")
    public String salesOrderDelete(Integer sobNo, Model model) {
        System.err.println("------------------sobNoController------delete-------------------------------------------");
        //根据id删除所有商品
        int n = salesOrderService.deleteSob(sobNo);
        if (n == 1) {
            System.err.println("-----------------删除成功");
        }
        //从数据库查询所有商品
        List<SalesOrderBrowse> salesOrderList = salesOrderService.queryAllSalesOrder();
        if (salesOrderList != null) {
            model.addAttribute("salesOrderList",salesOrderList);
        }
        return "view/salesmanagement/salesOrderBrowse/saleOrderList";
    }
    //增加
    @ResponseBody
    @RequestMapping(value = "/saveSalesOrderAdd.do",method = RequestMethod.POST)
    public JSONObject saveSalesOrderAdd(HttpServletRequest request ) {
        String salesOrderNo1=request.getParameter("salesOrderNo");
        System.err.println("------------------salesOrderController------List2-------------------------------------------"+salesOrderNo1);
        int salesOrderNo=Integer.parseInt(salesOrderNo1);
        String productName=request.getParameter("productName");
        String customerName=request.getParameter("customerName");
        String salesQuantity2=request.getParameter("salesQuantity");
        int salesQuantity=Integer.parseInt(salesQuantity2);
        String salesDate2=request.getParameter("salesDate");
        String salesStatus=request.getParameter("salesStatus");
        SalesOrderBrowse sob=new SalesOrderBrowse();
        sob.setCustomerName(customerName);
        sob.setProductName(productName);
        //字符串转日期格式
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
        Date salesDate = null;
        try {
            salesDate =  sf.parse(salesDate2);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
        sob.setSalesDate(salesDate);
        sob.setSalesOrderNo(salesOrderNo);
        sob.setSalesStatus(salesStatus);
        sob.setSalesQuantity(salesQuantity);
        int n=salesOrderService.insertSalesOrder(sob);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
        if (n==1){
            jsonObject.put("success",success);
            return jsonObject;
        }
        jsonObject.put("false",Isfalse);
        return  jsonObject;
    }
    //查询商品信息根据产品以及销售单编号
    @RequestMapping(value = "/selectSalesOrder.do")
    public String selectSalesOrder(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                  Model model) {
        System.err.println("------------------SalesOrderController------select-------------------------------------------");
        String s = request.getParameter("keyWord");
        if (JudgeNC.judage(s)) {
            //是数字
            String s2 = "%" + s + "%";
            System.err.println("--------单号--------");
            System.err.println("----------------" + s2);
            List<SalesOrderBrowse> salesOrderList = salesOrderService.querySalesOrderBySalesOrderDimId(s2);
            if (salesOrderList != null) {
                model.addAttribute("salesOrderList", salesOrderList);
            }
            return "view/salesmanagement/salesOrderBrowse/saleOrderList";
        } else {
            String s3 = "%" + s + "%";
            System.err.println("--------产品--------");
            System.err.println("----------------" + s3);
            List<SalesOrderBrowse> salesOrderList = salesOrderService.querySalesOrderBySalesOrderDimCoa(s3);
            if (salesOrderList != null) {
                model.addAttribute("salesOrderList", salesOrderList);
            }
            return "view/salesmanagement/salesOrderBrowse/saleOrderList";
        }
    }
}
