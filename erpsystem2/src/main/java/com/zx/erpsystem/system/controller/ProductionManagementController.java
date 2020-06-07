package com.zx.erpsystem.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.zx.erpsystem.system.constant.ProductionState;
import com.zx.erpsystem.system.model.ProductRegistration;
import com.zx.erpsystem.system.service.ProductionService;
import com.zx.erpsystem.system.utils.util.IdGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

/**
 * 生产管理模块
 * @author XIANGXIN
 * @date 2020/3/8 - 22:49
 */
@Controller
@RequestMapping("/productionManagementController")
public class ProductionManagementController {
    /**
     * 待生产状态
     */
    private static final String ZORE = "0";
    @Autowired
    private ProductionService productionService;
    private static final String PRODUCTION_LIST = "view/productionManagement/productionList";
    private static final String PURCHASE_PLAN = "view/productionManagement/purchasePlan";

    /**
     * 进入产品管理页面，刷新产品列表。
     *
     * @param request
     * @return
     */
    @RequestMapping("/production.do")
    public String production(HttpServletRequest request) {
        //初始化页面，加载登记生产产品列表
        List<ProductRegistration> productList = productionService.queryProductionList();
         productList = queryList(productList);
        if (productList != null ) {
            request.setAttribute("productList", productList);
        }
        return PRODUCTION_LIST;
    }

    /**
     * 采购计划
     * @return
     */
    @RequestMapping("purchasePlan.do")
    public String purchasePlan(){
        return PURCHASE_PLAN;
    }

    /**
     * 条件查询产品
     * @param request
     * @return
     */
    @RequestMapping("/production!queryProduct.do")
    public String queryProduct(HttpServletRequest request,Model model){
        ProductRegistration productRegistration = new ProductRegistration();
        String type = request.getParameter("type");
        String value = request.getParameter("value");
        if(value != null && value != ""){
            switch (type){
                case "productionNo":
                    productRegistration.setProductionNo(Long.valueOf(value));
                    break;
                case "productName":
                    productRegistration.setProductName(value);
                    break;
                case "productionStatus":
                        //待生产
                        if(ProductionState.TO_BE_PRODUCED.equals(value)){
                            productRegistration.setProductionStatus("0");
                        }
                        //已生产
                        if(ProductionState.HAVE_PRODUCED.equals(value)){
                            productRegistration.setProductionStatus("1");
                        }
                    break;
                default:
                    break;
            }
        }
        List<ProductRegistration> productRegistrations = productionService.queryProductionListCondition(productRegistration);
        productRegistrations = queryList(productRegistrations);
        if (productRegistrations != null ) {
            request.setAttribute("productList", productRegistrations);
        }
        return PRODUCTION_LIST;
    }

    /**
     * 新增/修改登记产品信息
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/production!saveProduct.do")
    public JSONObject productSave(HttpServletRequest request) {
        ProductRegistration productRegistration = new ProductRegistration();
        productRegistration.setProductName(request.getParameter("productName"));
        productRegistration.setProductionStatus(request.getParameter("productionStatus"));
        productRegistration.setProductionQuantity(Integer.parseInt(request.getParameter("productionQuantity")));
        productRegistration.setProducedDate(new Timestamp(System.currentTimeMillis()));
        String productionNo = request.getParameter("productionNo");
        JSONObject jsonObject = new JSONObject();
        if (productionNo == null || productionNo == "") {
            //保存登记产品信息
            productRegistration.setProductionNo(IdGenerator.getId());
            productionService.addProduction(productRegistration);
            jsonObject.put("success","保存成功！");
        } else {
            //修改登记产品信息
            productRegistration.setProductionNo(Long.valueOf(productionNo));
            productionService.updateProduction(productRegistration);
            jsonObject.put("success","修改成功！");
        }
        return jsonObject;
    }

    /**
     * 删除单个产品信息
     * @param request
     * @param response
     * @return
     * @throws IOException
     */
    @ResponseBody
    @RequestMapping("/production!deleteProduction.do")
    public JSONObject deleteProduction(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Long productionNo = Long.valueOf(request.getParameter("productionNo"));
        productionService.deleteProduction(productionNo);
        return null;
    }

    /**
     * 批量删除登记产品信息
     * @param request
     * @param response
     * @return
     * @throws IOException
     */
    @ResponseBody
    @RequestMapping("/production!deleteProductionBatch.do")
    public JSONObject deleteProductionBatch(HttpServletRequest request, HttpServletResponse response) throws IOException {
       String str[] = request.getParameterValues("id");
        JSONObject jsonObject = new JSONObject();
        for (String id:str) {
            if(id != null && id != ""){
                productionService.deleteProduction(Long.valueOf(id));
            }
            jsonObject.put("success","删除成功！");
            return jsonObject;
        }
        return null;
    }

    /**
     * 查询登记产品列表
     * @return
     */
    public List<ProductRegistration> queryList(List<ProductRegistration> productList) {
        if (productList != null && productList.size() > 0) {
            productList.stream().forEach(productRegistration -> {
                if (ZORE.equals(productRegistration.getProductionStatus())) {
                    productRegistration.setProductionStatus("待生产");
                } else {
                    productRegistration.setProductionStatus("已生产");
                }
            });
        }
        return productList;
    }

}