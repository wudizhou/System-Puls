package com.zx.erpsystem.system.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 订单管理模块
 * @author XIANGXIN
 * @date 2020/3/8 - 22:51
 */
@Controller
@RequestMapping("/orderManagementController")
public class OrderManagementController {
    private static final String ORDER_TO_BROWSE = "view/orderManagement/orderToBrowse";
    private static final String ORDER_TRACKING = "view/orderManagement/orderTracking";

    /**
     * 订单浏览
     * @return
     */
    @RequestMapping("/orderToBrowse.do")
    public String orderToBrowse(){
        return ORDER_TO_BROWSE;
    }

    /**
     * 订单采购
     * @return
     */
    @RequestMapping("/orderTracking.do")
    public String orderTracking(){
        return ORDER_TRACKING;
    }
}
