package com.zx.erpsystem.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.zx.erpsystem.system.model.PurchaseWarehousingManagement;
import com.zx.erpsystem.system.service.PurchaseWarehousingService;
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
 * --采购入库管理
 * @author Zhang Zhou
 * @date 2020-03-12 15:36
 */
@Controller
@Transactional(rollbackFor = Exception.class)
@RequestMapping("/purchaseWarehousingController")
public class PurchaseWarehousingController {
    @Autowired
    PurchaseWarehousingService purchaseWarehousingService;
    private static final String PURCHASEWAREHOUSINGLIST ="view/inventoryManagement/purchaseWarehousingManagement/purchaseWarehousingList";
    /**
     * 查询所有领料
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/productWarehousingList.do")
    public String productWarehousingList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                         Model model) {
        System.err.println("------------------productWarehousingList------List-------------------------------------------");
        //从数据库查询所有领料
        List<PurchaseWarehousingManagement> purchaseWarehousingList = purchaseWarehousingService.queryAllPurchaseWarehousing();
        if (purchaseWarehousingList != null) {
            System.err.println("------------------productWarehousingList------List2-------------------------------------------"+purchaseWarehousingList);
            model.addAttribute("PurchaseWarehousingList", purchaseWarehousingList);
        }
        return PURCHASEWAREHOUSINGLIST;
    }

    /**
     * 根据路径来将id值传入
     * @param parameter
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/getPurchaseWarehousing.do",method= RequestMethod.POST)
    public JSONObject getPurchaseWarehousing (@RequestParam("id") String parameter) {
        int id2 = Integer.parseInt(parameter);
        System.err.println("------------------productWarehousingList------List-------------------------------------------"+id2);
        PurchaseWarehousingManagement ptm= purchaseWarehousingService.getPurchaseWarehousing(id2);
        System.err.println("------------------productWarehousingList------List-------------------------------------------"+ptm);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("ptm",ptm);
        System.err.println("----------"+jsonObject);
        return jsonObject;
    }

    /**
     * 修改
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/savePurchaseWarehousing.do",method = RequestMethod.POST)
    public JSONObject savePurchaseWarehousing(HttpServletRequest request ) {
        String purchaseStorageOrdersNo1=request.getParameter("purchaseStorageOrdersNo");
        System.err.println("------------------productWarehousingList------List-------------------------------------------"+purchaseStorageOrdersNo1);
        int purchaseStorageOrdersNo=Integer.parseInt(purchaseStorageOrdersNo1);
        String commodityName=request.getParameter("commodityName");
        String commodityCategory=request.getParameter("commodityCategory");
        String supplier=request.getParameter("supplier");
        String storageStaff=request.getParameter("storageStaff");
        String commodityStorageStatus=request.getParameter("commodityStorageStatus");
        String commodityStorageQuantity2=request.getParameter("commodityStorageQuantity");
        int commodityStorageQuantity=Integer.parseInt(commodityStorageQuantity2);
        String commodityStorageDate1=request.getParameter("commodityStorageDate");
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date commodityStorageDate= null;
        try {
            commodityStorageDate =  sf.parse(commodityStorageDate1);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
        PurchaseWarehousingManagement ptm=new PurchaseWarehousingManagement();
        ptm.setPurchaseStorageOrdersNo(purchaseStorageOrdersNo);
        ptm.setCommodityName(commodityName);
        ptm.setStorageStaff(storageStaff);
        ptm.setCommodityCategory(commodityCategory);
        ptm.setSupplier(supplier);
        ptm.setCommodityStorageStatus(commodityStorageStatus);
        ptm.setCommodityStorageQuantity(commodityStorageQuantity);
        ptm.setCommodityStorageDate(commodityStorageDate);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
        System.err.println("------------------productWarehousingList------List-------------------------------------------"+ptm);
        int n= purchaseWarehousingService.updatePurchaseWarehousing(ptm);
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
    @RequestMapping(value = "/addPurchaseWarehousing.do",method = RequestMethod.POST)
    public JSONObject addPurchaseWarehousing(HttpServletRequest request ) {
        String purchaseStorageOrdersNo1=request.getParameter("purchaseStorageOrdersNo");
        System.err.println("------------------productWarehousingList------List-------------------------------------------"+purchaseStorageOrdersNo1);
        int purchaseStorageOrdersNo=Integer.parseInt(purchaseStorageOrdersNo1);
        String commodityName=request.getParameter("commodityName");
        String commodityCategory=request.getParameter("commodityCategory");
        String supplier=request.getParameter("supplier");
        String storageStaff=request.getParameter("storageStaff");
        String commodityStorageStatus=request.getParameter("commodityStorageStatus");
        String commodityStorageQuantity2=request.getParameter("commodityStorageQuantity");
        int commodityStorageQuantity=Integer.parseInt(commodityStorageQuantity2);
        String commodityStorageDate1=request.getParameter("commodityStorageDate");
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
        Date commodityStorageDate= null;
        try {
            commodityStorageDate =  sf.parse(commodityStorageDate1);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
        PurchaseWarehousingManagement ptm=new PurchaseWarehousingManagement();
        ptm.setPurchaseStorageOrdersNo(purchaseStorageOrdersNo);
        ptm.setCommodityName(commodityName);
        ptm.setStorageStaff(storageStaff);
        ptm.setCommodityCategory(commodityCategory);
        ptm.setSupplier(supplier);
        ptm.setCommodityStorageStatus(commodityStorageStatus);
        ptm.setCommodityStorageQuantity(commodityStorageQuantity);
        ptm.setCommodityStorageDate(commodityStorageDate);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
        System.err.println("------------------productWarehousingList------List-------------------------------------------"+ptm);
        int n= purchaseWarehousingService.addPurchaseWarehousing(ptm);
        if (n==1){
            jsonObject.put("success",success);
            return jsonObject;
        }
        jsonObject.put("false",Isfalse);
        return  jsonObject;
    }

    /**
     * 删除单项
     * @param purchaseStorageOrdersNo
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/purchaseWarehousingDelete.do")
    public String purchaseWarehousingDelete(Integer purchaseStorageOrdersNo, Model model, HttpServletRequest request, HttpServletResponse response) {
        System.err.println("------------------productWarehousingList------delete-------------------------------------------");
        //根据id删除所有商品
        int n = purchaseWarehousingService.purchaseWarehousingDeleteByNo(purchaseStorageOrdersNo);
        if (n == 1) {
            System.err.println("-----------------删除成功");
        }
        List<PurchaseWarehousingManagement> purchaseWarehousingList = purchaseWarehousingService.queryAllPurchaseWarehousing();
        if (purchaseWarehousingList != null) {
            System.err.println("------------------productWarehousingList------List2-------------------------------------------"+purchaseWarehousingList);
            model.addAttribute("PurchaseWarehousingList", purchaseWarehousingList);
        }
        return PURCHASEWAREHOUSINGLIST;
    }

}
