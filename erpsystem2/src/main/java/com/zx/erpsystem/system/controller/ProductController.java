package com.zx.erpsystem.system.controller;

import com.zx.erpsystem.system.model.ProductManagement;
import com.zx.erpsystem.system.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 * 基础信息模块
 * @author  Zhang zhou
 * @date 2020-03-09 09:17
 */
@Controller
@RequestMapping("/productController")
public class ProductController {
    @Autowired
    private ProductService productService;

    //    查询所有产品
    @RequestMapping(value = "/productList.do")
    public String productList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                              Model model) {
        System.err.println("------------------productController------List-------------------------------------------");
        //从数据库查询所有商品
        List<ProductManagement> productList = productService.queryAllProduct();
        if (productList != null) {
            model.addAttribute("productList", productList);
        }
        return "view/basicinformation/product/productList";
    }

    // 增加产品
    @RequestMapping(value = "/addProduct.do")
    public String addProduct(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                             Model model) {
        //接受数据
        System.err.println("------------------productController------add-------------------------------------------");
        String productId2 = request.getParameter("product");
        int productlId = Integer.parseInt(productId2);
        String productName = request.getParameter("productName");
        String productOriginAddress = request.getParameter("productOriginAddress");
        String productUnit = request.getParameter("productUnit");
        String productSpecification = request.getParameter("productSpecification");
        String productBatchNumber = request.getParameter("productBatchNumber");
        //建立对象，设置参数
        ProductManagement pm = new ProductManagement();
        pm.setProductManagementNo(productlId);
        pm.setProductBatchNumber(productBatchNumber);
        pm.setProductName(productName);
        pm.setProductOriginAddress(productOriginAddress);
        pm.setProductUnit(productUnit);
        pm.setProductSpecification(productSpecification);
        int n = productService.addProduct(pm);
        if (n == 1) {
            System.err.println("-----------------增加成功！-------------------------------------------");
            List<ProductManagement> productList = productService.queryAllProduct();
            if (productList != null) {
                model.addAttribute("productList", productList);
            }
        }
        return "view/basicinformation/product/productList";
    }

    //删除产品
    @RequestMapping(value = "/productDelete.do")
    public String productDelete(Integer productManagementNo, Model model) {
        System.err.println("------------------productController------delete-------------------------------------------");
        //根据id删除所有商品
        int n = productService.deleteProductByNo(productManagementNo);
        if (n == 1) {
            System.err.println("-----------------删除成功");
        }
        //删除后再查询数据库
        List<ProductManagement> productList = productService.queryAllProduct();
        if (productList != null) {
            model.addAttribute("productList", productList);
        }
        return "view/basicinformation/product/productList";
    }

    //修改产品
    @RequestMapping(value = "/productUpdate.do")
    public String productUpdate(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                Model model) {
        //接受数据
        System.err.println("------------------productController------update2-------------------------------------------");
        String productId2 = request.getParameter("product");
        int productlId = Integer.parseInt(productId2);
        System.err.println("----------------------------------------------------" + productlId);
        String productName = request.getParameter("productName");
        String productOriginAddress = request.getParameter("productOriginAddress");
        String productUnit = request.getParameter("productUnit");
        String productSpecification = request.getParameter("productSpecification");
        String productBatchNumber = request.getParameter("productBatchNumber");
        //建立对象，设置参数
        ProductManagement pm = new ProductManagement();
        pm.setProductManagementNo(productlId);
        pm.setProductBatchNumber(productBatchNumber);
        pm.setProductName(productName);
        pm.setProductOriginAddress(productOriginAddress);
        pm.setProductUnit(productUnit);
        pm.setProductSpecification(productSpecification);
        int n = productService.updateProductByNo(pm);
        //修改后再查询数据库
        if (n == 1) {
            System.err.println("-----------------修改成功！-------------------------------------------");
            List<ProductManagement> productList = productService.queryAllProduct();
            if (productList != null) {
                model.addAttribute("productList", productList);
            }
        }
        return "view/basicinformation/product/productList";
    }

    //查询产品
    @RequestMapping(value = "/selectProduct.do")
    public String selectProduct(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                Model model) {
        System.err.println("------------------selectProduct-------------------------------------------");
        ProductManagement pm = new ProductManagement();
        String value=request.getParameter("value");
        String type = request.getParameter("type");
        System.err.println("------------------selectProduct-------------------------------------------"+value);
        System.err.println("------------------selectProduct-------------------------------------------"+type);
        if (value != null && !"".equals(type)){
            System.err.println("------------------pm-------------------------------------------");
            if ("productName".equals(type)){
              pm.setProductName(value);
            } else if ("productManagementNo".equals(type)) {
//                if ("productManagementNo".equals(value)) {
                    try {
                        Integer productManagementNo2 = Integer.valueOf(value);
                       pm.setProductManagementNo(productManagementNo2);
                    } catch (Exception e) {
                   }
//                }
            } else if ("productOriginAddress".equals(type)) {
                pm.setProductOriginAddress(value);
            } else if ("productUnit".equals(type)) {
               pm.setProductUnit(value);
            }else if ("productSpecification".equals(type)) {
                pm.setProductSpecification(value);
            }else if ("productBatchNumber".equals(type)) {
                pm.setProductBatchNumber(value);
            }else if ("keyWords".equals(type)){
                System.err.println("------------------keyWords-------------------------------------------");
                List<ProductManagement> productList=productService.queryProductByKeyWord(value);
                if (productList != null) {
                    model.addAttribute("productList", productList);
                }
                return "view/basicinformation/product/productList";
            }
            Map<String,Object> map = new HashMap<String,Object>();
            System.err.println("-------------------------------------------------------------"+pm.getProductManagementNo());
            map.put("productManagementNo",pm.getProductManagementNo());
            map.put("productName",pm.getProductName());
            map.put("productOriginAddress",pm.getProductOriginAddress());
            map.put("productUnit",pm.getProductUnit());
            map.put("productSpecification",pm.getProductSpecification());
            map.put("productBatchNumber",pm.getProductBatchNumber());
            List<ProductManagement> productList=productService.queryProductByCondition(map);
            if (productList != null) {
                System.err.println("------------------keyWords2-------------------------------------------");
                model.addAttribute("productList", productList);
            }
            return "view/basicinformation/product/productList";
        }
        List<ProductManagement> productList = productService.queryAllProduct();
        if (productList != null) {
            model.addAttribute("productList", productList);
        }
        return "view/basicinformation/product/productList";
    }

}
