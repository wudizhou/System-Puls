package com.zx.erpsystem.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.zx.erpsystem.system.model.ProductWarehousingManagement;
import com.zx.erpsystem.system.service.ProductWarehousingService;
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
 * --产品入库管理
 * @author Zhang Zhou
 * @date 2020-03-12 15:37
 */
@Controller
@Transactional(rollbackFor = Exception.class)
@RequestMapping("/productWarehousingController")
public class ProductWarehousingController {
    @Autowired
    ProductWarehousingService  productWarehousingService;
    private static final String PRODUCTWAREHOUSING_LIST ="view/inventoryManagement/productWarehousingManagement/productWarehousingList";
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
        List<ProductWarehousingManagement> productWarehousingList = productWarehousingService.queryAllProductWarehousing();
        if (productWarehousingList != null) {
            System.err.println("------------------productWarehousingList------List2-------------------------------------------"+productWarehousingList);
            model.addAttribute("ProductWarehousingList", productWarehousingList);
        }
        return PRODUCTWAREHOUSING_LIST;
    }

    /**
     * 根据路径来将id值传入
     * @param parameter
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/getProductWarehousing.do",method= RequestMethod.POST)
    public JSONObject getProductWarehousing (@RequestParam("id") String parameter) {
        int id2 = Integer.parseInt(parameter);
        System.err.println("------------------getProductWarehousing------List-------------------------------------------"+id2);
        ProductWarehousingManagement ptm= productWarehousingService.getProductWarehousing(id2);
        System.err.println("------------------getProductWarehousing------List-------------------------------------------"+ptm);
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
    @RequestMapping(value = "/saveProductWarehousing.do",method = RequestMethod.POST)
    public JSONObject saveProductWarehousing(HttpServletRequest request ) {
        String productStorageOrdersNo1=request.getParameter("productStorageOrdersNo");
        System.err.println("------------------saveProductWarehousing------List-------------------------------------------"+productStorageOrdersNo1);
        int productStorageOrdersNo=Integer.parseInt(productStorageOrdersNo1);
        String productName=request.getParameter("productName");
        String storageStaff=request.getParameter("storageStaff");
        String productCategory=request.getParameter("productCategory");
        String productStorageStatus=request.getParameter("productStorageStatus");
        String productStorageQuantity2=request.getParameter("productStorageQuantity");
        int productStorageQuantity=Integer.parseInt(productStorageQuantity2);
        String productStorageDate1=request.getParameter("productStorageDate");
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date productStorageDate= null;
        try {
            productStorageDate =  sf.parse(productStorageDate1);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
        ProductWarehousingManagement ptm=new  ProductWarehousingManagement();
        ptm.setProductStorageOrdersNo(productStorageOrdersNo);
        ptm.setProductName(productName);
        ptm.setStorageStaff(storageStaff);
        ptm.setProductCategory(productCategory);
        ptm.setProductStorageStatus(productStorageStatus);
        ptm.setProductStorageQuantity(productStorageQuantity);
        ptm.setProductStorageDate(productStorageDate);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
        System.err.println("------------------saveProductInventory------List-------------------------------------------"+ptm);
        int n= productWarehousingService.updateProductWarehousing(ptm);
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
    @RequestMapping(value = "/addProductWarehousing.do",method = RequestMethod.POST)
    public JSONObject addProductWarehousing(HttpServletRequest request ) {
        String productStorageOrdersNo1=request.getParameter("productStorageOrdersNo");
        System.err.println("------------------saveProductWarehousing------List-------------------------------------------"+productStorageOrdersNo1);
        int productStorageOrdersNo=Integer.parseInt(productStorageOrdersNo1);
        String productName=request.getParameter("productName");
        String storageStaff=request.getParameter("storageStaff");
        String productCategory=request.getParameter("productCategory");
        String productStorageStatus=request.getParameter("productStorageStatus");
        String productStorageQuantity2=request.getParameter("productStorageQuantity");
        int productStorageQuantity=Integer.parseInt(productStorageQuantity2);
        String productStorageDate1=request.getParameter("productStorageDate");
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
        Date productStorageDate= null;
        try {
            productStorageDate =  sf.parse(productStorageDate1);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
        ProductWarehousingManagement ptm=new  ProductWarehousingManagement();
        ptm.setProductStorageOrdersNo(productStorageOrdersNo);
        ptm.setProductName(productName);
        ptm.setStorageStaff(storageStaff);
        ptm.setProductCategory(productCategory);
        ptm.setProductStorageStatus(productStorageStatus);
        ptm.setProductStorageQuantity(productStorageQuantity);
        ptm.setProductStorageDate(productStorageDate);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
        System.err.println("------------------saveProductInventory------List-------------------------------------------"+ptm);
        int n= productWarehousingService.addProductWarehousing(ptm);
        if (n==1){
            jsonObject.put("success",success);
            return jsonObject;
        }
        jsonObject.put("false",Isfalse);
        return  jsonObject;
    }

    /**
     * 删除单项
     * @param productStorageOrdersNo
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/productWarehousingDelete.do")
    public String productWarehousingDelete(Integer productStorageOrdersNo, Model model, HttpServletRequest request, HttpServletResponse response) {
        System.err.println("------------------productWarehousingDelete------delete-------------------------------------------");
        //根据id删除所有商品
        int n = productWarehousingService.productWarehousingDeleteByNo(productStorageOrdersNo);
        if (n == 1) {
            System.err.println("-----------------删除成功");
        }
        List<ProductWarehousingManagement> ProductWarehousingList = productWarehousingService.queryAllProductWarehousing();
        if (ProductWarehousingList != null) {
            model.addAttribute("ProductWarehousingList", ProductWarehousingList);
        }
        return PRODUCTWAREHOUSING_LIST;
    }
}
