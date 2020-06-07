package com.zx.erpsystem.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.zx.erpsystem.system.model.CommodityInventoryManagement;
import com.zx.erpsystem.system.service.CommodityInventoryService;
import com.zx.erpsystem.system.utils.pagingUtil.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * 库存管理模块
 * --商品库存管理
 * @author Zhang Zhou
 * @date 2020-03-12 15:30
 */
@Controller
@Transactional(rollbackFor = Exception.class)
@RequestMapping("/commodityInventoryController")
public class CommodityInventoryController {
    @Autowired
    CommodityInventoryService commodityInventoryService;
    private static final String COMMODITYINVENTORY_LIST = "view/inventoryManagement/commodityInventoryManagement/commodityInventoryList";
    private static final String COMMODITYINVENTORY_BYQUERY_LIST = "view/inventoryManagement/commodityInventoryManagement/commodityInventoryByQueryList";

    /**
     * 查询所有的商品库存信息
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/commodityInventoryList.do")
    public String commodityInventoryList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                Model model) {
        System.err.println("------------------commodityInventoryListController------List-------------------------------------------");
        //从数据库查询所有商品
        int pc = 0;
        try {
            pc = getPC(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
        int ps=5;
        PageBean<CommodityInventoryManagement> pb=commodityInventoryService.queryAllCommodityInventory(pc,ps);
        request.setAttribute("pb", pb);
        System.out.println("-----------------"+pb);
        if(pb !=null){
            model.addAttribute("pb", pb);
            return COMMODITYINVENTORY_LIST;
        }
        return COMMODITYINVENTORY_LIST;
    }
    /**
     * 获取页面传递的pc
     * @param request
     * @param response
     * @return
     * @throws ServletException
     * @throws IOException
     */
    public int getPC(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String value = request.getParameter("pc");
        if (value == null || value.trim().isEmpty()) {
            return 1;
        }
        return Integer.parseInt(value);
    }

    /**
     * 批量删除
     * @param request
     * @param response
     * @param session
     * @param model
     * @param ids
     * @return
     */
    @ResponseBody
    @RequestMapping(value ="/deleteMany.do",method = RequestMethod.GET)
    public JSONObject deleteMany(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                 Model model, @RequestParam("ids[]") int[] ids){
        JSONObject jsonObject = new JSONObject();
        String success = "ok";
        String nosuccess = "nook";
//        int[] ids=TypeConversion.stringarraysToInt(parameter);
//        System.err.println(ids);
        //直接传数组
        int n=commodityInventoryService.deleteMany(ids);
        //重定向
        if(n==1){
            jsonObject.put("success",success);
            return jsonObject;
        }
        jsonObject.put("false",nosuccess);
        return jsonObject;
    }

    /**
     * 单项选择删除
     * @param commodityInventoryNo
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/commodityInventoryDelete.do")
    public String commodityInventoryDelete(Integer commodityInventoryNo, Model model,HttpServletRequest request, HttpServletResponse response) {
        System.err.println("------------------commodityInventoryDelete------delete-------------------------------------------");
        //根据id删除所有商品
        int n = commodityInventoryService.deletecommodityInventoryByNo(commodityInventoryNo);
        if (n == 1) {
            System.err.println("-----------------删除成功");
        }
        int pc = 0;
        try {
            pc = getPC(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
        int ps=5;
        PageBean<CommodityInventoryManagement> pb=commodityInventoryService.queryAllCommodityInventory(pc,ps);
        request.setAttribute("pb", pb);
        System.out.println("-----------------"+pb);
        if(pb !=null){
            model.addAttribute("pb", pb);
            return COMMODITYINVENTORY_LIST;
        }
        return COMMODITYINVENTORY_LIST;
    }

    /**
     * 通过获取id 查询出信息返回给前端
     * @param parameter
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/getCommodityInventory.do",method=RequestMethod.POST)
    //根据路径来将id值传入
    public JSONObject getCommodityInventory (@RequestParam("id") String parameter) {
        int id2 = Integer.parseInt(parameter);
        CommodityInventoryManagement cim = commodityInventoryService.getsalesOrder(id2);
        System.err.println("------------------getCommodityInventory------List-------------------------------------------"+cim);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("cim",cim);
        System.err.println("----------"+jsonObject);
        return jsonObject;
    }

    /**
     * 表单传值修改数据
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/saveCommodityInventory.do",method = RequestMethod.POST)
    public JSONObject saveCommodityInventory(HttpServletRequest request ) {
        String commodityInventoryNo1=request.getParameter("commodityInventoryNo");
        System.err.println("------------------saveCommodityInventory------List-------------------------------------------"+commodityInventoryNo1);
        int commodityInventoryNo=Integer.parseInt(commodityInventoryNo1);
        String commodityName=request.getParameter("commodityName");
        String commodityPrice2=request.getParameter("commodityPrice");
        Double commodityPrice=Double.parseDouble(commodityPrice2);
        String commodityInventoryQuantity2=request.getParameter("commodityInventoryQuantity");
        int commodityInventoryQuantity=Integer.parseInt(commodityInventoryQuantity2);
        String supplier=request.getParameter("supplier");
        String procurementStaff=request.getParameter("procurementStaff");
        String commodityCategory=request.getParameter("commodityCategory");
        CommodityInventoryManagement cim = new CommodityInventoryManagement();
        cim.setCommodityCategory(commodityCategory);
        cim.setCommodityInventoryNo(commodityInventoryNo);
        cim.setCommodityInventoryQuantity(commodityInventoryQuantity);
        cim.setCommodityName(commodityName);
        cim.setCommodityPrice(commodityPrice);
        cim.setSupplier(supplier);
        cim.setProcurementStaff(procurementStaff);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
       int n= commodityInventoryService.updatecommodityInventory(cim);
        if (n==1){
            jsonObject.put("success",success);
            return jsonObject;
        }
        jsonObject.put("false",Isfalse);
        return  jsonObject;
    }

    /**
     * 增加信息
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/addCommodityInventory.do",method = RequestMethod.POST)
    public JSONObject addCommodityInventory(HttpServletRequest request ) {
        String commodityInventoryNo1=request.getParameter("commodityInventoryNo");
        System.err.println("------------------addCommodityInventory------List-------------------------------------------"+commodityInventoryNo1);
        int commodityInventoryNo=Integer.parseInt(commodityInventoryNo1);
        String commodityName=request.getParameter("commodityName");
        String commodityPrice2=request.getParameter("commodityPrice");
        Double commodityPrice=Double.parseDouble(commodityPrice2);
        String commodityInventoryQuantity2=request.getParameter("commodityInventoryQuantity");
        int commodityInventoryQuantity=Integer.parseInt(commodityInventoryQuantity2);
        String supplier=request.getParameter("supplier");
        String procurementStaff=request.getParameter("procurementStaff");
        String commodityCategory=request.getParameter("commodityCategory");
        CommodityInventoryManagement cim = new CommodityInventoryManagement();
        cim.setCommodityCategory(commodityCategory);
        cim.setCommodityInventoryNo(commodityInventoryNo);
        cim.setCommodityInventoryQuantity(commodityInventoryQuantity);
        cim.setCommodityName(commodityName);
        cim.setCommodityPrice(commodityPrice);
        cim.setSupplier(supplier);
        cim.setProcurementStaff(procurementStaff);
        JSONObject jsonObject = new JSONObject();
        String success = "保存成功！";
        String Isfalse = "false";
        int n= commodityInventoryService.addcommodityInventory(cim);
        if (n==1){
            jsonObject.put("success",success);
            return jsonObject;
        }
        jsonObject.put("false",Isfalse);
        return  jsonObject;
    }

    /**
     * 查询
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/selectCommodityInventory.do")
    public String selectCommodityInventory(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                Model model) {
        System.err.println("------------------selectCommodityInventory-------------------------------------------");
        int pc = 0;
        try {
            pc = getPC(request,response);
            System.err.println("-----------------" + pc);
        } catch (ServletException | IOException e) {
                e.printStackTrace();
        }
        int ps=5;
        CommodityInventoryManagement cim = new CommodityInventoryManagement();
        String value=request.getParameter("value");
        String type = request.getParameter("type");
        System.err.println("------------------selectCommodityInventory-------------------------------------------"+value);
        System.err.println("------------------selectCommodityInventory-------------------------------------------"+type);
        if (value != null && !"".equals(type)) {
            System.err.println("------------------cim-------------------------------------------");
            if ("commodityInventoryNo".equals(type)) {
                int value2 = Integer.parseInt(value);
                cim.setCommodityInventoryNo(value2);
            } else if ("commodityName".equals(type)) {
                cim.setCommodityName(value);

            } else if ("commodityPrice".equals(type)) {
                double value2 = Double.parseDouble(value);
                cim.setCommodityPrice(value2);
            } else if ("commodityInventoryQuantity".equals(type)) {
                int value2 = Integer.parseInt(value);
                cim.setCommodityInventoryQuantity(value2);
            } else if ("supplier".equals(type)) {
                cim.setSupplier(value);
            } else if ("procurementStaff".equals(type)) {
                cim.setProcurementStaff(value);
            } else if ("commodityCategory".equals(type)) {
                cim.setCommodityCategory(value);
            } else if ("keyWords".equals(type)) {
                PageBean<CommodityInventoryManagement> pb = commodityInventoryService.queryAllCommodityInventoryByKeWords(pc, ps, value);
                request.setAttribute("pb", pb);
                System.out.println("-----------------" + pb);
                if (pb != null) {
                    model.addAttribute("pb", pb);
                    return COMMODITYINVENTORY_BYQUERY_LIST;
                }
                return COMMODITYINVENTORY_BYQUERY_LIST;
            }
            Map<String, Object> map = new HashMap<String, Object>();
            System.err.println("-------------------------------------------------------------" + cim.getCommodityInventoryNo());
            if(cim.getCommodityInventoryNo()!=null){
                map.put("commodityInventoryNo", "%"+cim.getCommodityInventoryNo().toString()+"%");
            }else {
                map.put("commodityInventoryNo", "%"+"?"+"%");
            }
            if(cim.getCommodityName()!=null){
                map.put("commodityName", "%"+cim.getCommodityName()+"%");
            }else {
                map.put("commodityName", "%"+"?"+"%");
            }

            if(cim.getCommodityPrice()!=null){
                map.put("commodityPrice", "%"+cim.getCommodityPrice().toString()+"%");
            }else {
                map.put("commodityPrice", "%"+"?"+"%");
            }

            if(cim.getCommodityInventoryQuantity()!=null){
                map.put("commodityInventoryQuantity", "%"+cim.getCommodityInventoryQuantity().toString()+"%");
            }else {
                map.put("commodityInventoryQuantity", "%"+"?"+"%");
            }

            if(cim.getSupplier()!=null){
                map.put("supplier", "%"+cim.getSupplier()+"%");
            }else {
                map.put("supplier", "%"+"?"+"%");
            }

            if(cim.getProcurementStaff()!=null){
                map.put("procurementStaff", "%"+cim.getProcurementStaff()+"%");
            }else {
                map.put("procurementStaff", "%"+"?"+"%");
            }

            if(cim.getCommodityCategory()!=null){
                map.put("commodityCategory", "%"+cim.getCommodityCategory()+"%");
            }else {
                map.put("commodityCategory", "%"+"?"+"%");
            }
            map.put("pc1", pc);
            map.put("pc2", (pc - 1) * ps);
            map.put("ps", ps);
            PageBean<CommodityInventoryManagement> pb = commodityInventoryService.queryAllCommodityInventoryByKeWords2(map);
            request.setAttribute("pb", pb);
            System.out.println("-----------------" + pb);
            if (pb != null) {
                model.addAttribute("pb", pb);
                return COMMODITYINVENTORY_BYQUERY_LIST;
            }
            return COMMODITYINVENTORY_BYQUERY_LIST;
          }
            return COMMODITYINVENTORY_BYQUERY_LIST;
        }

    }


