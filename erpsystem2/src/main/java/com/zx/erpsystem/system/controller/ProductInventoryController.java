package com.zx.erpsystem.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.zx.erpsystem.system.model.ProductInventoryManagement;
import com.zx.erpsystem.system.service.ProductInventoryService;
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
import java.util.List;

/**
 * 库存管理模块
 * --产品库存管理
 * @author Zhang Zhou
 * @date 2020-03-12 15:33
 */
@Controller
@Transactional(rollbackFor = Exception.class)
@RequestMapping("/productInventoryController")
public class ProductInventoryController {
    @Autowired
    ProductInventoryService productInventoryService;
    private static final String PRODUCTINVENTORY_LIST ="view/inventoryManagement/productInventoryManagement/productInventoryList";
    /**
     * 查询所有领料
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/productInventoryList.do")
    public String productInventoryList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                      Model model) {
        System.err.println("------------------productInventoryList------List-------------------------------------------");
        //从数据库查询所有领料
        List<ProductInventoryManagement> productInventoryList = productInventoryService.queryAllproductInventory();
        if (productInventoryList != null) {
            model.addAttribute("ProductInventoryList", productInventoryList);
        }
        return PRODUCTINVENTORY_LIST;
    }

    /**
     * 根据路径来将id值传入
     * @param parameter
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/getProductInventory.do",method= RequestMethod.POST)
    public JSONObject getProductInventory (@RequestParam("id") String parameter) {
        int id2 = Integer.parseInt(parameter);
        System.err.println("------------------getProductInventory------List-------------------------------------------"+id2);
        ProductInventoryManagement pim= productInventoryService.getProductInventory(id2);
        System.err.println("------------------getProductInventory------List-------------------------------------------"+pim);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("pim",pim);
        System.err.println("----------"+jsonObject);
        return jsonObject;
    }

    /**
     * 修改
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/saveProductInventory.do",method = RequestMethod.POST)
    public JSONObject saveProductInventory(HttpServletRequest request ) {
        String productInventoryNo1=request.getParameter("productInventoryNo");
        System.err.println("------------------saveProductInventory------List-------------------------------------------"+productInventoryNo1);
        int productInventoryNo=Integer.parseInt(productInventoryNo1);
        String productName=request.getParameter("productName");
        String productPrice2=request.getParameter("productPrice");
        Double productPrice=Double.parseDouble(productPrice2);
        String productCategory=request.getParameter("productCategory");
        String productInventoryQuantity2=request.getParameter("productInventoryQuantity");
        int productInventoryQuantity=Integer.parseInt(productInventoryQuantity2);
        ProductInventoryManagement pim=new ProductInventoryManagement();
        pim.setProductInventoryNo(productInventoryNo);
        pim.setProductName(productName);
        pim.setProductPrice(productPrice);
        pim.setProductCategory(productCategory);
        pim.setProductInventoryQuantity(productInventoryQuantity);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
        System.err.println("------------------saveProductInventory------List-------------------------------------------"+pim);
        int n= productInventoryService.updateProductInventory(pim);
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
    @RequestMapping(value = "/addProductInventory.do",method = RequestMethod.POST)
    public JSONObject addProductInventory(HttpServletRequest request ) {
        String productInventoryNo1=request.getParameter("productInventoryNo");
        System.err.println("------------------saveProductInventory------List-------------------------------------------"+productInventoryNo1);
        int productInventoryNo=Integer.parseInt(productInventoryNo1);
        String productName=request.getParameter("productName");
        String productPrice2=request.getParameter("productPrice");
        Double productPrice=Double.parseDouble(productPrice2);
        String productCategory=request.getParameter("productCategory");
        String productInventoryQuantity2=request.getParameter("productInventoryQuantity");
        int productInventoryQuantity=Integer.parseInt(productInventoryQuantity2);
        ProductInventoryManagement pim=new ProductInventoryManagement();
        pim.setProductInventoryNo(productInventoryNo);
        pim.setProductName(productName);
        pim.setProductPrice(productPrice);
        pim.setProductCategory(productCategory);
        pim.setProductInventoryQuantity(productInventoryQuantity);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
        System.err.println("------------------saveProductInventory------List-------------------------------------------"+pim);
        int n= productInventoryService.addProductInventory(pim);
        if (n==1){
            jsonObject.put("success",success);
            return jsonObject;
        }
        jsonObject.put("false",Isfalse);
        return  jsonObject;
    }

    /**
     * 删除单项
     * @param productInventoryNo
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/productInventoryDelete.do")
    public String productInventoryDelete(Integer productInventoryNo, Model model,HttpServletRequest request, HttpServletResponse response) {
        System.err.println("------------------pickingOutboundDelete------delete-------------------------------------------");
        //根据id删除所有商品
        int n = productInventoryService.productInventoryDeleteByNo(productInventoryNo);
        if (n == 1) {
            System.err.println("-----------------删除成功");
        }
        List<ProductInventoryManagement> productInventoryList = productInventoryService.queryAllproductInventory();
        if (productInventoryList != null) {
            model.addAttribute("ProductInventoryList", productInventoryList);
        }
        return PRODUCTINVENTORY_LIST;
    }
}
