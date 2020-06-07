package com.zx.erpsystem.system.controller;

import com.zx.erpsystem.system.model.CommodityManagement;
import com.zx.erpsystem.system.service.CommodityService;
import com.zx.erpsystem.system.utils.util.JudgeNC;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
/**
 * 基础信息模块
 * @author  Zhang zhou
 * @date 2020-03-09 09:17
 */
@Controller
@RequestMapping("/commodityController")
public class CommodityController {
    @Autowired
    CommodityService commodityService;

    //查询所有商品
    @RequestMapping(value = "/commodityList.do")
    public String commodityList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                Model model) {
        System.err.println("------------------CommodityController------List-------------------------------------------");
        //从数据库查询所有商品
        List<CommodityManagement> commodityList = commodityService.queryAllCommodity();
        if (commodityList != null) {
            model.addAttribute("commodityList", commodityList);
        }
        return "view/basicinformation/commodity/commodityList";
    }

    //    删除所选商品
    @RequestMapping(value = "/commodityDelete.do")
    public String commodityDelete(Integer commodityManagementNo, Model model) {
        System.err.println("------------------CommodityController------delete-------------------------------------------");
        //根据id删除所有商品
        int n = commodityService.deleteCommdityByNo(commodityManagementNo);
        if (n == 1) {
            System.err.println("-----------------删除成功");
        }
        //删除后再查询数据库
        List<CommodityManagement> commodityList = commodityService.queryAllCommodity();
        if (commodityList != null) {
            model.addAttribute("commodityList", commodityList);
        }
        return "view/basicinformation/commodity/commodityList";
    }

    //    跳转至修改页面
    @RequestMapping(value = "/commodityToUpdatePage.do")
    public String commodityToUpdatePage(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                        Model model) {
        System.err.println("------------------CommodityController------update1-------------------------------------------");
        String commoditylId2 = request.getParameter("commodityManagementNo");
        System.out.println(commoditylId2);
        int commoditylId = Integer.parseInt(commoditylId2);
        CommodityManagement commodity = commodityService.queryCommodityByCommodityId(commoditylId);
        request.setAttribute("commodity", commodity);
        return "view/basicinformation/commodity/commodityUpdate";
    }

    //   修改商品信息
    @RequestMapping(value = "/commodityUpdate.do")
    public String commodityUpdate(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                  Model model) {
        //接受数据
        System.err.println("------------------CommodityController------update2-------------------------------------------");
        String commoditylId2 = request.getParameter("commodity");
        int commoditylId = Integer.parseInt(commoditylId2);
        String commodityName = request.getParameter("commodityName");
        String commodityOriginAddress = request.getParameter("commodityOriginAddress");
        String commodityUnit = request.getParameter("commodityUnit");
        String commoditySpecification = request.getParameter("commoditySpecification");
        String commodityBatchNumber = request.getParameter("commodityBatchNumber");
        //建立对象，设置参数
        CommodityManagement cm = new CommodityManagement();
        cm.setCommodityManagementNo(commoditylId);
        cm.setCommodityName(commodityName);
        cm.setCommodityOriginAddress(commodityOriginAddress);
        cm.setCommodityUnit(commodityUnit);
        cm.setCommoditySpecification(commoditySpecification);
        cm.setCommodityBatchNumber(commodityBatchNumber);
        int n = commodityService.updateCommodityByNo(cm);
        //修改后再查询数据库
        if (n == 1) {
            System.err.println("-----------------修改成功！-------------------------------------------");
            List<CommodityManagement> commodityList = commodityService.queryAllCommodity();
            if (commodityList != null) {
                model.addAttribute("commodityList", commodityList);
            }
        }
        return "view/basicinformation/commodity/commodityList";
    }

    //查询商品信息根据产地以及销售单编号
    @RequestMapping(value = "/selectCommodity.do")
    public String selectCommodity(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                  Model model) {
        System.err.println("------------------CommodityController------select-------------------------------------------");
        String s = request.getParameter("keyWord");
        if (JudgeNC.judage(s)) {
            //是数字
            String s2 = "%" + s + "%";
            System.err.println("--------单号--------");
            System.err.println("----------------" + s2);
            List<CommodityManagement> commodityList = commodityService.queryCommodityByCommodityDimId(s2);
            if (commodityList != null) {
                model.addAttribute("commodityList", commodityList);
            }
            return "view/basicinformation/commodity/commodityList";
        } else {
            String s3 = "%" + s + "%";
            System.err.println("--------地点--------");
            System.err.println("----------------" + s3);
            List<CommodityManagement> commodityList = commodityService.queryCommodityByCommodityDimCoa(s3);
            if (commodityList != null) {
                model.addAttribute("commodityList", commodityList);
            }
            return "view/basicinformation/commodity/commodityList";
        }
    }
    //------------------------------------------------------跳转到录入界面
    @RequestMapping(value ="/addCommoditySkip.do")
    public String addCommoditySkip(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                           Model model){
        System.out.println("-----------addSkip----------------");
        return"view/basicinformation/commodity/commodityAdd";
    }
    //添加商品信息
    @RequestMapping(value = "/addCommodity.do")
    public String addCommodity(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                               Model model) {
        //接受数据
        System.err.println("------------------CommodityController------add-------------------------------------------");
        String commoditylId2 = request.getParameter("commodity");
        int commoditylId = Integer.parseInt(commoditylId2);
        String commodityName = request.getParameter("commodityName");
        String commodityOriginAddress = request.getParameter("commodityOriginAddress");
        String commodityUnit = request.getParameter("commodityUnit");
        String commoditySpecification = request.getParameter("commoditySpecification");
        String commodityBatchNumber = request.getParameter("commodityBatchNumber");
        //建立对象，设置参数
        CommodityManagement cm = new CommodityManagement();
        cm.setCommodityManagementNo(commoditylId);
        cm.setCommodityName(commodityName);
        cm.setCommodityOriginAddress(commodityOriginAddress);
        cm.setCommodityUnit(commodityUnit);
        cm.setCommoditySpecification(commoditySpecification);
        cm.setCommodityBatchNumber(commodityBatchNumber);
        int n = commodityService.addCommodityByNo(cm);
        if (n == 1) {
            System.err.println("-----------------增加成功！-------------------------------------------");
            List<CommodityManagement> commodityList = commodityService.queryAllCommodity();
            if (commodityList != null) {
                model.addAttribute("commodityList", commodityList);
            }
        }
        return "view/basicinformation/commodity/commodityList";
    }
}


