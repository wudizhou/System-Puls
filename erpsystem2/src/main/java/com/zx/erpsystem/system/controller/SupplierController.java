package com.zx.erpsystem.system.controller;

import com.zx.erpsystem.system.model.SupplierManagement;
import com.zx.erpsystem.system.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
@RequestMapping("/supplierController")
public class SupplierController {
    @Autowired
    SupplierService supplierService;

    // 查询所有供应商
    @RequestMapping(value = "/supplierList.do")
    public String supplierList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                               Model model) {
        System.err.println("------------------supplierListController------List-------------------------------------------");
        //从数据库查询所有客户
        List<SupplierManagement> supplierList = supplierService.queryAllSupplier();
        if (supplierList != null) {
            model.addAttribute("supplierList", supplierList);
        }
        return "view/basicinformation/supplier/supplierList";
    }

    //增加供应商
//    @ResponseBody
    @RequestMapping(value = "/addSupplier.do", method = RequestMethod.POST)
    public String addSupplier(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                              Model model) {
        //接受数据
        System.err.println("------------------SupplierController------add-------------------------------------------");
        String supplierlId2 = request.getParameter("supplier");
        int supplierlId = Integer.parseInt(supplierlId2);
        String supplierAbbreviation = request.getParameter("supplierAbbreviation");
        String supplierTel = request.getParameter("supplierTel");
        String supplierLinkman = request.getParameter("supplierLinkman");
        String supplierEmail = request.getParameter("supplierEmail");
        String supplierDepositBank = request.getParameter("supplierDepositBank");
        //建立对象，设置参数
        SupplierManagement sm = new SupplierManagement();
        sm.setSupplierManagementNo(supplierlId);
        sm.setSupplierAbbreviation(supplierAbbreviation);
        sm.setSupplierTel(supplierTel);
        sm.setSupplierLinkman(supplierLinkman);
        sm.setSupplierEmail(supplierEmail);
        sm.setSupplierDepositBank(supplierDepositBank);
        int n = supplierService.addSupplier(sm);
        if (n == 1) {
            System.err.println("------------------增加成功-------------------------------------------");
            List<SupplierManagement> supplierList = supplierService.queryAllSupplier();
            if (supplierList != null) {
                model.addAttribute("supplierList", supplierList);

            }
            return "view/basicinformation/supplier/supplierList";
        }
        return "view/basicinformation/supplier/supplierList";

     }
//    @ResponseBody
//    @RequestMapping(value = "/addSupplier.do" ,method = RequestMethod.POST)
//    public Message addSupplier(@RequestBody SupplierManagement sm) {
//        int n=supplierService.addSupplier(sm);
//        if(n==1){ System.err.println("------------------增加成功-------------------------------------------");
//          return Message.success();
//        }
//        return Message.fail();
//    }
// 跳转至修改页面
@RequestMapping(value = "/supplierToUpdatePage.do")
public String supplierToUpdatePage(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                   Model model) {
    System.err.println("------------------supplierController------update1-------------------------------------------");
    String supplierId2 = request.getParameter("supplierManagementNo");
    System.out.println(supplierId2);
    int supplierlId = Integer.parseInt(supplierId2);
    SupplierManagement supplierManagement=supplierService.querySupplierById(supplierlId);
    //判断不能为空
    if(supplierManagement!=null){
        request.setAttribute("supplier",supplierManagement );
        return "view/basicinformation/supplier/supplierUpdate";
    }
    return "view/basicinformation/supplier/warming";
}
    //   修改供应商信息
    @RequestMapping(value = "/supplierUpdate.do")
    public String supplierUpdate(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                  Model model) {
        //接受数据
        System.err.println("------------------supplierController------update2-------------------------------------------");
        String supplierlId2 = request.getParameter("supplier");
        int supplierlId = Integer.parseInt(supplierlId2);
        String supplierAbbreviation = request.getParameter("supplierAbbreviation");
        String supplierTel = request.getParameter("supplierTel");
        String supplierLinkman = request.getParameter("supplierLinkman");
        String supplierEmail = request.getParameter("supplierEmail");
        String supplierDepositBank = request.getParameter("supplierDepositBank");
        //建立对象，设置参数
        SupplierManagement sm = new SupplierManagement();
        sm.setSupplierManagementNo(supplierlId);
        sm.setSupplierAbbreviation(supplierAbbreviation);
        sm.setSupplierDepositBank(supplierTel);
        sm.setSupplierEmail(supplierLinkman);
        sm.setSupplierLinkman(supplierEmail);
        sm.setSupplierTel(supplierDepositBank);
        int n = supplierService.updateSupplier(sm);
        //修改后查询
        if (n == 1) {
            System.err.println("-----------------修改成功！-------------------------------------------");
            List<SupplierManagement> supplierList = supplierService.queryAllSupplier();
            if (supplierList != null) {
                model.addAttribute("supplierList", supplierList);
            }
            return "view/basicinformation/supplier/supplierList";
        }
        return "view/basicinformation/supplier/supplierList";
    }
    //删除所选供应商
    @RequestMapping(value = "/supplierDelete.do")
    public String supplierDelete(Integer supplierManagementNo, Model model) {
        System.err.println("------------------supplierDeleteController------delete-------------------------------------------");
        //根据id删除所选客户
        SupplierManagement supplierManagement=supplierService.querySupplierById(supplierManagementNo);
        //判断不能为空
        if(supplierManagement!=null){
            int n = supplierService.deleteSupplierByNo(supplierManagementNo);
            if (n == 1) {
                System.err.println("-----------------删除成功");
            }
            //删除后再查询数据库
            List<SupplierManagement> supplierList = supplierService.queryAllSupplier();
            if (supplierList != null) {
                model.addAttribute("supplierList", supplierList);
            }
            return "view/basicinformation/supplier/supplierList";
        }
        return "view/basicinformation/supplier/warming";
    }
}
