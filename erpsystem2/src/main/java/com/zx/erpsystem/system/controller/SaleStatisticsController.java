package com.zx.erpsystem.system.controller;

import com.zx.erpsystem.system.service.SalesOrderService;
import com.zx.erpsystem.system.utils.util.ReturnEcDataDeal;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/**
 * 销售管理模块
 * @author  Zhang zhou
 * @date 2020-03-09 09:17
 */
@Controller
@Transactional(rollbackFor = Exception.class)
@RequestMapping("/saleStatisticsController")
public class SaleStatisticsController {
    @Autowired
    private SalesOrderService salesOrderService;

    /**
     * 产品季度销售统计
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/saleStatisticsList.do")
    public String saleStatisticsList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                 Model model){
        System.err.println("------------------saleStatisticsListController------List-------------------------------------------");
        String f1 = "2020-01-01";
        String f2 = "2020-04-01";
        String f3 = "2020-04-01";
        String f4 = "2020-07-01";
        String f5 = "2020-07-01";
        String f6 = "2020-10-01";
        String f7 = "2020-10-01";
        String f8 = "2021-01-01";
        int thefirstquarter1 =salesOrderService.querySalesOrderByMounthLyCA(f1,f2);
        int thesecondquarter1=salesOrderService.querySalesOrderByMounthLyCA(f3,f4);
        int thethirdquarter1 =salesOrderService.querySalesOrderByMounthLyCA(f5,f6);
        int theforthquarter1=salesOrderService.querySalesOrderByMounthLyCA(f7,f8);
        String thefirstquarter= String.valueOf(thefirstquarter1);
        String thesecondquarter= String.valueOf(thesecondquarter1);
        String thethirdquarter= String.valueOf(thethirdquarter1);
        String theforthquarter= String.valueOf(theforthquarter1);
        model.addAttribute("thefirstquarter", thefirstquarter);
        model.addAttribute("thesecondquarter", thesecondquarter);
        model.addAttribute("thethirdquarter", thethirdquarter);
        model.addAttribute("theforthquarter", theforthquarter);
        return "view/salesmanagement/salesStatistics/saleStatisticsList";
    }
    @ResponseBody
    @RequestMapping(value = "/saleStatisticsCharts.do",method= RequestMethod.POST)
    public JSONArray saleStatisticsEcharts(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                     Model model){
        System.err.println("------------------saleStatisticsListController------List-------------------------------------------");
        String h = "华为mate";
        String x = "小米";
        String p = "iPhone";
        String v = "vivo";
        String f1 = "2020-01-01";
        String f2 = "2020-04-01";
        String f3 = "2020-04-01";
        String f4 = "2020-07-01";
        String f5 = "2020-07-01";
        String f6 = "2020-10-01";
        String f7 = "2020-10-01";
        String f8 = "2021-01-01";
        //华为mate
        int hw=salesOrderService.sumFQuanityByTheFirstDateFor(h,f1,f2);
        System.err.println("------------------saleStatisticsListController------Listyyy-------------------------------------------"+hw);
        int hw1=salesOrderService.sumFQuanityByTheSecondDateFor(h,f3,f4);
        int hw2=salesOrderService.sumFQuanityByTheThirdDateFor(h,f5,f6);
        int hw3=salesOrderService.sumFQuanityByTheForthDateFor(h,f7,f8);
        //小米
        int xm=salesOrderService.sumXQuanityByTheFirstDateFor(x,f1,f2);
        int xm1=salesOrderService.sumXQuanityByTheSecondDateFor(x,f3,f4);
        int xm2=salesOrderService.sumXQuanityByTheThirdDateFor(x,f5,f6);
        int xm3=salesOrderService.sumXQuanityByTheForthDateFor(x,f7,f8);
        //iPhone11
        int ph=salesOrderService.sumPQuanityByTheFirstDateFor(p,f1,f2);
        int ph1=salesOrderService.sumPQuanityByTheSecondDateFor(p,f3,f4);
        int ph2=salesOrderService.sumPQuanityByTheThirdDateFor(p,f5,f6);
        int ph3=salesOrderService.sumPQuanityByTheForthDateFor(p,f7,f8);
        //vivo
        int vo=salesOrderService.sumVQuanityByTheFirstDateFor(v,f1,f2);
        int vo1=salesOrderService.sumVQuanityByTheSecondDateFor(v,f3,f4);
        int vo2=salesOrderService.sumVQuanityByTheThirdDateFor(v,f5,f6);
        int vo3=salesOrderService.sumVQuanityByTheForthDateFor(v,f7,f8);
        List<Map<String, Object>> list= ReturnEcDataDeal.getListObject(ReturnEcDataDeal.getMapObject(h,hw,hw1,hw2,hw3),
                ReturnEcDataDeal.getMapObject(x,xm,xm1,xm2,xm3),
                ReturnEcDataDeal.getMapObject(p,ph,ph1,ph2,ph3),
                ReturnEcDataDeal.getMapObject(v,vo,vo1,vo2,vo3));
//        Map<String, Object> map = new HashMap<String, Object>();
//        map.put("name",h);
//        map.put("riseQuarter",f1);
//        map.put("stopQuarter",f2);
//       int n=salesOrderService.sumTQuanity(map);
//       System.err.println("------------------saleStatisticsListController------List-------------------------------------------"+n);
        JSONArray ja2 = JSONArray.fromObject(list);
        System.err.println("------------------saleStatisticsListController------List--------------"+ja2);
        return ja2;
    }

    /**
     * 产品每月销售统计与平均销售量
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/saleStatisticsCharts2.do",method= RequestMethod.POST)
    public JSONArray saleStatisticsEcharts2(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                           Model model){
        System.err.println("------------------saleStatisticsListController------List-------------------------------------------");
        //已结款
        List<Double> list2 = new ArrayList<Double>();
        for(int i=1;i<=12;i++){
            String s= String.valueOf(i);
            String s2= "2020-0"+s+"-01";
            String ss= String.valueOf(i+1);
            String ss2= "2020-0"+ss+"-01";
            System.err.println(s2+"-----"+ss2);
            int n =salesOrderService.querySalesOrderByMounthLyCA(s2,ss2);
            double d=Double.valueOf(n);
            System.err.println(d);
            list2.add(d);
        }
        //待发货
        List<Double> list3 = new ArrayList<Double>();
        for(int i=1;i<=12;i++){
            String s= String.valueOf(i);
            String s2= "2020-0"+s+"-01";
            String ss= String.valueOf(i+1);
            String ss2= "2020-0"+ss+"-01";
            int n =salesOrderService.querySalesOrderByMounthLyBO(s2,ss2);
            double d=Double.valueOf(n);
            list3.add(d);
        }
        //平均销量
        List<Double> list4 = new ArrayList<Double>();
        for(int i=1;i<=12;i++){
            String s= String.valueOf(i);
            String s2= "2020-0"+s+"-01";
            String ss= String.valueOf(i+1);
            String ss2= "2020-0"+ss+"-01";
            int n =salesOrderService.querySalesOrderByMounthLyCA(s2,ss2);
            double d=Double.valueOf(n);
            double d2=d/30;
//            BigDecimal bd = new BigDecimal(d2);
//            bd = bd.setScale(2, BigDecimal.ROUND_HALF_UP);
            DecimalFormat df = new DecimalFormat("#.00");
            list4.add(d2);
        }
        List<List<Double>> list = new ArrayList< List<Double>>();
        list.add(list2);
        list.add(list3);
        list.add(list4);
        JSONArray ja3 = JSONArray.fromObject(list);
        System.err.println("------------------saleStatisticsListController------List--------------"+ja3);
        return ja3;
    }

}
