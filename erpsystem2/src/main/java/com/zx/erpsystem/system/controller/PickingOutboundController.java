package com.zx.erpsystem.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.zx.erpsystem.system.model.PickingOutboundManagement;
import com.zx.erpsystem.system.service.PickingOutboundService;
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
 * --领料出库管理
 * @author Zhang Zhou
 * @date 2020-03-12 15:38
 */
@Controller
@Transactional(rollbackFor = Exception.class)
@RequestMapping("/pickingOutboundController")
public class PickingOutboundController {
    @Autowired
    PickingOutboundService pickingOutboundService;
    private static final String PICHINGOUTBOUND_LIST ="view/inventoryManagement/pickingOutboundManagement/pickingOutboundList";
    /**
     * 查询所有领料
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/pickingOutboundList.do")
    public String pickingOutboundList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                              Model model) {
        System.err.println("------------------pickingOutboundList------List-------------------------------------------");
        //从数据库查询所有领料
        List<PickingOutboundManagement> pickingOutboundList = pickingOutboundService.queryAllpickingOutbound();
        if (pickingOutboundList != null) {
            model.addAttribute("pickingOutboundList", pickingOutboundList);
        }
        return PICHINGOUTBOUND_LIST;
    }

    /**
     * 根据路径来将id值传入
     * @param parameter
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/getPickingOutbound.do",method= RequestMethod.POST)
    public JSONObject getPickingOutbound (@RequestParam("id") String parameter) {
        int id2 = Integer.parseInt(parameter);
        System.err.println("------------------getPickingOutbound------List-------------------------------------------"+id2);
        PickingOutboundManagement pob= pickingOutboundService.getPickingOutbound(id2);
        System.err.println("------------------getPickingOutbound------List-------------------------------------------"+pob);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("pob",pob);
        System.err.println("----------"+jsonObject);
        return jsonObject;
    }

    /**
     * 修改
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/savePickingOutbound.do",method = RequestMethod.POST)
    public JSONObject savePickingOutbound(HttpServletRequest request ) {
        String pickingOutboundDeliveryOrderNo1=request.getParameter("pickingOutboundDeliveryOrderNo");
        System.err.println("------------------salesOrderController------List-------------------------------------------"+pickingOutboundDeliveryOrderNo1);
        int pickingOutboundDeliveryOrderNo=Integer.parseInt(pickingOutboundDeliveryOrderNo1);
        String commodityName=request.getParameter("commodityName");
        String supplier=request.getParameter("supplier");
        String commodityOutboundDeliveryQuantity2=request.getParameter("commodityOutboundDeliveryQuantity");
        int commodityOutboundDeliveryQuantity=Integer.parseInt(commodityOutboundDeliveryQuantity2);
        String commodityOutboundDeliveryDate2=request.getParameter("commodityOutboundDeliveryDate");
        String procurementStaff=request.getParameter("procurementStaff");
        PickingOutboundManagement pob=new PickingOutboundManagement();
        pob.setPickingOutboundDeliveryOrderNo(pickingOutboundDeliveryOrderNo);
        pob.setCommodityName(commodityName);
        //字符串转日期格式
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date commodityOutboundDeliveryDate = null;
        try {
            commodityOutboundDeliveryDate =  sf.parse(commodityOutboundDeliveryDate2);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
        pob.setCommodityOutboundDeliveryDate(commodityOutboundDeliveryDate);
        pob.setCommodityOutboundDeliveryQuantity(commodityOutboundDeliveryQuantity);
        pob.setProcurementStaff(procurementStaff);
        pob.setSupplier(supplier);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
        System.err.println("------------------savePickingOutbound------List-------------------------------------------"+pob);
        int n= pickingOutboundService.updatePickingOutbound(pob);
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
    @RequestMapping(value = "/addPickingOutbound.do",method = RequestMethod.POST)
    public JSONObject addPickingOutbound(HttpServletRequest request ) {
        String pickingOutboundDeliveryOrderNo1=request.getParameter("pickingOutboundDeliveryOrderNo");
        System.err.println("------------------salesOrderController------List-------------------------------------------"+pickingOutboundDeliveryOrderNo1);
        int pickingOutboundDeliveryOrderNo=Integer.parseInt(pickingOutboundDeliveryOrderNo1);
        String commodityName=request.getParameter("commodityName");
        String supplier=request.getParameter("supplier");
        String commodityOutboundDeliveryQuantity2=request.getParameter("commodityOutboundDeliveryQuantity");
        int commodityOutboundDeliveryQuantity=Integer.parseInt(commodityOutboundDeliveryQuantity2);
        String commodityOutboundDeliveryDate2=request.getParameter("commodityOutboundDeliveryDate");
        String procurementStaff=request.getParameter("procurementStaff");
        PickingOutboundManagement pob=new PickingOutboundManagement();
        pob.setPickingOutboundDeliveryOrderNo(pickingOutboundDeliveryOrderNo);
        pob.setCommodityName(commodityName);
        //字符串转日期格式
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
        Date commodityOutboundDeliveryDate = null;
        try {
            commodityOutboundDeliveryDate =  sf.parse(commodityOutboundDeliveryDate2);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
        pob.setCommodityOutboundDeliveryDate(commodityOutboundDeliveryDate);
        pob.setCommodityOutboundDeliveryQuantity(commodityOutboundDeliveryQuantity);
        pob.setProcurementStaff(procurementStaff);
        pob.setSupplier(supplier);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
        int n= pickingOutboundService.addPickingOutbound(pob);
        if (n==1){
            jsonObject.put("success",success);
            return jsonObject;
        }
        jsonObject.put("false",Isfalse);
        return  jsonObject;
    }

    /**
     * 删除单项
     * @param pickingOutboundNo
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/pickingOutboundDelete.do")
    public String pickingOutboundDelete(Integer pickingOutboundNo, Model model,HttpServletRequest request, HttpServletResponse response) {
        System.err.println("------------------commodityInventoryDelete------delete-------------------------------------------");
        //根据id删除所有商品
        int n = pickingOutboundService.pickingOutboundDeleteByNo(pickingOutboundNo);
        if (n == 1) {
            System.err.println("-----------------删除成功");
        }
        List<PickingOutboundManagement> pickingOutboundList = pickingOutboundService.queryAllpickingOutbound();
        if (pickingOutboundList != null) {
            model.addAttribute("pickingOutboundList", pickingOutboundList);
        }
        return PICHINGOUTBOUND_LIST;
    }
}
