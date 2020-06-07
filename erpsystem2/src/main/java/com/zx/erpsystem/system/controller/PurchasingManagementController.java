package com.zx.erpsystem.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.zx.erpsystem.system.constant.CheckStatus;
import com.zx.erpsystem.system.model.PurchaseSublist;
import com.zx.erpsystem.system.model.PurchasingManagement;
import com.zx.erpsystem.system.service.PurchaseService;
import com.zx.erpsystem.system.utils.util.IdGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

/**
 * 采购管理模块
 * @author XIANGXIN
 * @date 2020/3/8 - 22:45
 */
@Controller
@RequestMapping("/purchasingManagementController")
public class PurchasingManagementController {
    @Autowired
    private PurchaseService purchaseService;
    private static final String PURCHASE_ORDER = "view/purchasingManagement/purchaseOrder";
    private static final String PURCHASE_ADD = "view/purchasingManagement/purchaseAdd";
    private static final String CHECK_PURCHASE_ORDER = "view/purchasingManagement/checkPurchaseOrder";
    private static final String PURCHASE_DETAIL = "view/purchasingManagement/purchaseDetail";
    private static final String PURCHASE_DETAIL_CHECK = "view/purchasingManagement/purchaseDetailCheck";

    /**
     * 采购单管理
     * @return
     */
    @RequestMapping("/purchaseOrder.do")
    public String purchaseOrder(HttpServletRequest request){
        //前半段按采购单查询
        PurchasingManagement purchasingManagement = new PurchasingManagement();
        String value = request.getParameter("value");
        String flag = request.getParameter("flag");
        List<PurchasingManagement> purchasingList = null;
        List<PurchasingManagement> purchasingListChecked = null;

        if(CheckStatus.CHECK_PENDING_CHINESE.equals(flag)&&value!=null&&value!="") {
            //待审核采购单
            purchasingManagement.setId(Long.valueOf(value));
        }
        purchasingManagement.setCheckStatus(CheckStatus.CHECK_PENDING);
        purchasingList = purchaseService.queryPurchase(purchasingManagement);

        if(purchasingManagement.getId()!= null){
            purchasingManagement.setId(null);
        }else{
            if(value!=null&&value!=""){
                purchasingManagement.setId(Long.valueOf(value));
            }
        }

        //审核成功
        purchasingManagement.setCheckStatus(CheckStatus.CHECK_SUCCESS);
        List<PurchasingManagement> purchasingListCheckedA = purchaseService.queryPurchase(purchasingManagement);
        //审核失败
        purchasingManagement.setCheckStatus(CheckStatus.CHECK_FAILE);
        List<PurchasingManagement> purchasingListCheckedB = purchaseService.queryPurchase(purchasingManagement);
        //已审核
        purchasingListChecked = purchasingListCheckedA;
        purchasingListChecked.addAll(purchasingListCheckedB);

        purchasingList.forEach(purchase->{
            if(CheckStatus.CHECK_PENDING.equals(purchase.getCheckStatus())){
                purchase.setCheckStatus(CheckStatus.CHECK_PENDING_CHINESE);
            }
        });
        purchasingListChecked.forEach(purchase->{
            if(CheckStatus.CHECK_SUCCESS.equals(purchase.getCheckStatus())){
                purchase.setCheckStatus(CheckStatus.CHECK_SUCCESS_CHINESE);
            }else {
                purchase.setCheckStatus(CheckStatus.CHECK_FAILE_CHINESE);
            }
        });
        request.setAttribute("purchasingList",purchasingList);
        request.setAttribute("purchasingListChecked",purchasingListChecked);
        return PURCHASE_ORDER;
    }

    /**
     * 新增采购单
     * @return
     */
    @RequestMapping("/addPurchaseOrder.do")
    public String addPurchaseOrder(){
        return PURCHASE_ADD;
    }

    /**
     * 保存采购单
     * @return
     */
    @ResponseBody
    @RequestMapping("/addPurchaseOrder!savePurchaseOrder.do")
    public JSONObject savePurchaseOrder(HttpServletRequest request,HttpServletResponse response) throws IOException {
        JSONObject jsonObject = new JSONObject();
        PurchasingManagement purchasingManagement = new PurchasingManagement();
        Long id = IdGenerator.getId();
        purchasingManagement.setId(id);
        purchasingManagement.setCheckStatus(CheckStatus.CHECK_PENDING);
        purchasingManagement.setCreatTime(new Timestamp(System.currentTimeMillis()));
        String purchaseBuyer = request.getParameter("PurchaseBuyer");
        String purchaseExplain = request.getParameter("purchaseExplain");
        if(purchaseBuyer!=null&&purchaseBuyer!=""&&purchaseExplain!=null&&purchaseExplain!=""){
            purchasingManagement.setBuyer(purchaseBuyer);
            purchasingManagement.setPurchaseExplain(purchaseExplain);
            purchaseService.addPurchase(purchasingManagement);
            jsonObject.put("purchaseId",String.valueOf(id));
            jsonObject.put("purchaseBuyer",purchaseBuyer);
            jsonObject.put("purchaseExplain",purchaseExplain);
            jsonObject.put("success","新建采购单成功，可在右边为采购单添加商品。");
        }
        response.setCharacterEncoding("utf-8");
//        response.getWriter().write(jsonObject.toJSONString());
        return jsonObject;
    }

    /**
     * 删除商品
     * @param request
     * @return
     */
    @RequestMapping("/addPurchaseOrder!deleteCommodity.do")
    public String deleteCommodity(HttpServletRequest request){
        //获取采购单号
        String purchaseId = request.getParameter("purchaseId");
        PurchaseSublist purchaseSublist = new PurchaseSublist();
        purchaseSublist.setPurchaseId(Long.valueOf(purchaseId));
        //批量删除采购单商品
        String[] ids = request.getParameterValues("id");
        if(ids != null && ids.length >0 ){
            for (String id:ids) {
                purchaseService.deletePurchaseCommodity(Long.valueOf(id));
            }
        }
        purchaseService.showPurchaseOrder(request,purchaseSublist);
        return PURCHASE_ADD;
    }

    /**
     * 添加/修改采购单商品
     * @param request
     * @param response
     * @param purchaseSublist
     * @return
     */
    @RequestMapping("/addPurchaseOrder!saveCommodity")
    public String saveCommodity(HttpServletRequest request,HttpServletResponse response, PurchaseSublist purchaseSublist){
        if(purchaseSublist.getId()== null){
            //新增
            purchaseSublist.setId(IdGenerator.getId());
            //添加采购单商品
            purchaseService.addPurchaseCommodity(purchaseSublist);
        }else {
            //修改
            purchaseService.updatePurchaseCommodity(purchaseSublist);
        }
        purchaseService.showPurchaseOrder(request,purchaseSublist);
        return PURCHASE_ADD;
    }

    /**
     * 采购单待审核页面(审核)
     * @return
     */
    @RequestMapping("/checkPurchaseOrder.do")
    public String checkPurchaseOrder(HttpServletRequest request){
        PurchasingManagement myPurchase = new PurchasingManagement();
        myPurchase.setCheckStatus(CheckStatus.CHECK_PENDING);
        List<PurchasingManagement> purchasingList = purchaseService.queryPurchase(myPurchase);
       //审核状态
        purchasingList.forEach(purchase->{
            if(CheckStatus.CHECK_PENDING.equals(purchase.getCheckStatus())){
                purchase.setCheckStatus(CheckStatus.CHECK_PENDING_CHINESE);
            }
        });
        request.setAttribute("purchasingList",purchasingList);
        return CHECK_PURCHASE_ORDER;
    }

    /**
     * 采购单详情
     * @param request
     * @return
     */
    @RequestMapping("/purchaseDetail.do")
    public String purchaseDetail(HttpServletRequest request){
        Long id = Long.valueOf(request.getParameter("id").trim());
        String status = request.getParameter("status");
        String Explain = request.getParameter("checkExplain");
        if(Explain != null){
             Explain = new StringBuilder("审核不通过！").append(new StringBuilder(Explain)).toString();
        }
        if (id !=null){
            List<PurchaseSublist> purchaseSublistList = purchaseService.queryCommoditiesByPurchaseId(id);
            request.setAttribute("purchaseSublistList",purchaseSublistList);
        }
        if(CheckStatus.CHECK_FAILE_CHINESE.equals(status)){
            request.setAttribute("checkExplain",Explain);
        }
        return PURCHASE_DETAIL;
    }

    /**
     * 采购单审核详情页
     * @param request
     * @return
     */
    @RequestMapping("/purchaseDetailCheck.do")
    public String purchaseDetailCheck(HttpServletRequest request){
        Long id = Long.valueOf(request.getParameter("id").trim());
        String status = request.getParameter("status");
        String Explain = request.getParameter("checkExplain");
        if (id !=null){
            List<PurchaseSublist> purchaseSublistList = purchaseService.queryCommoditiesByPurchaseId(id);
            request.setAttribute("purchaseSublistList",purchaseSublistList);
            request.setAttribute("id",id);
        }
        return PURCHASE_DETAIL_CHECK;
    }

    /**
     * 采购单审核
     * @return
     */
    @RequestMapping("/checkPurchaseOrder!purchaseCheck.do")
    public String purchaseCheck(HttpServletRequest request){
        //采购单id
        String id = request.getParameter("purchaseId");
        //审核标识符
        String flag = request.getParameter("flag");
        String checkExplain = request.getParameter("checkExplain");
        PurchasingManagement purchasingManagement = new PurchasingManagement();
        purchasingManagement.setId(Long.valueOf(id));
        purchasingManagement.setCheckTime(new Timestamp(System.currentTimeMillis()));
        if(checkExplain!=null && checkExplain!=""){
            purchasingManagement.setCheckExplain(checkExplain);
        }
        if(flag!=null && flag!=""){
            if(Boolean.TRUE.equals(Boolean.valueOf(flag))){
                //审核通过
                purchasingManagement.setCheckStatus(CheckStatus.CHECK_SUCCESS);
            }else{
                //审核失败
                purchasingManagement.setCheckStatus(CheckStatus.CHECK_FAILE);
            }
        }
        purchaseService.updatePurchase(purchasingManagement);
        return checkPurchaseOrder(request);
    }

    /**
     * 批量删除采购单
     * @param request
     * @param response
     * @return
     * @throws IOException
     */
    @ResponseBody
    @RequestMapping("/purchaseOrder!deleteProductionBatch.do")
    public JSONObject deleteProductionBatch(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String str[] = request.getParameterValues("id");
        JSONObject jsonObject = new JSONObject();
        for (String id:str) {
            if(id != null && id != ""){
                purchaseService.deletePurchase(Long.valueOf(id));
            }
        }
        jsonObject.put("success","删除成功！");
        return jsonObject;
    }
}
