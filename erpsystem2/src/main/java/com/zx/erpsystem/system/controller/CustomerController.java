package com.zx.erpsystem.system.controller;

import com.zx.erpsystem.system.model.CustomerManagement;
import com.zx.erpsystem.system.service.CustomerService;
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
@RequestMapping("/customerController")
public class CustomerController {
    @Autowired
    CustomerService customerService;
    //    查询所有客户
    @RequestMapping(value = "/customerList.do")
    public String customerList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                Model model) {
        System.err.println("------------------customerListController------List-------------------------------------------");
        //从数据库查询所有客户
        List<CustomerManagement> customerList = customerService.queryAllCustomer();
        if (customerList != null) {
            model.addAttribute("customerList", customerList);
        }
        return "view/basicinformation/customer/customerList";
    }
    // 跳转至修改页面
    @RequestMapping(value = "/customerToUpdatePage.do")
    public String customerToUpdatePage(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                        Model model) {
        System.err.println("------------------customerController------update1-------------------------------------------");
        String customerlId2 = request.getParameter("customerManagementNo");
        System.out.println(customerlId2);
        int customerlId = Integer.parseInt(customerlId2);
        CustomerManagement customer = customerService.queryCustomerByCustomerId(customerlId);
        System.err.println("----------------------"+customer+customer.getCustomerAbbreviation());
        request.setAttribute("customer",customer );
        return "view/basicinformation/customer/customerUpdate";
    }

    //   修改商品信息
    @RequestMapping(value = "/customerUpdate.do")
    public String customeryUpdate(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                  Model model) {
        //接受数据
        System.err.println("------------------customerController------update2-------------------------------------------");
        String customerlId2 = request.getParameter("customer");
        int customerlId = Integer.parseInt(customerlId2);
        String customerAbbreviation = request.getParameter("customerAbbreviation");
        String customerTel = request.getParameter("customerTel");
        String customerLinkman = request.getParameter("customerLinkman");
        String customerEmail = request.getParameter("customerEmail");
        String customerDepositBank = request.getParameter("customerDepositBank");
        //建立对象，设置参数
        CustomerManagement ct= new CustomerManagement();
        ct.setCustomerManagementNo(customerlId);
        ct.setCustomerAbbreviation(customerAbbreviation);
        ct.setCustomerDepositBank(customerDepositBank);
        ct.setCustomerEmail(customerEmail);
        ct.setCustomerLinkman(customerLinkman);
        ct.setCustomerTel(customerTel);
        int n= customerService.updateCustomerByNo(ct);
        //修改后查询
        if (n == 1) {
            System.err.println("-----------------修改成功！-------------------------------------------");
            List<CustomerManagement> customerList = customerService.queryAllCustomer();
            if (customerList != null) {
                model.addAttribute("customerList", customerList);
            }
        }
        return "view/basicinformation/customer/customerList";
    }
    //删除所选客户
    @RequestMapping(value = "/customerDelete.do")
    public String customerDelete(Integer customerManagementNo, Model model) {
        System.err.println("------------------customerDeleteController------delete-------------------------------------------");
        //根据id删除所选客户
        int n = customerService.deleteCustomerByNo(customerManagementNo);
        if (n == 1) {
            System.err.println("-----------------删除成功");
        }
        //删除后再查询数据库
        List<CustomerManagement> customerList = customerService.queryAllCustomer();
        if (customerList != null) {
            model.addAttribute("customerList", customerList);
        }
        return "view/basicinformation/customer/customerList";
    }
    //------------------------------------------------------跳转到录入界面
    @RequestMapping(value ="/addCustomerSkip.do")
    public String addCustomerSkip(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                                   Model model){
        System.out.println("-----------addSkip----------------");
        return"view/basicinformation/customer/customerAdd";
    }
    //增加客户
    @RequestMapping(value = "/addCustomer.do")
    public String addCustomer(HttpServletRequest request, HttpServletResponse response, HttpSession session,
                               Model model) {
        //接受数据
        System.err.println("------------------CustomerController------add-------------------------------------------");
        String customerlId2 = request.getParameter("customer");
        int customerlId = Integer.parseInt(customerlId2);
        String customerAbbreviation = request.getParameter("customerAbbreviation");
        String customerTel = request.getParameter("customerTel");
        String customerLinkman = request.getParameter("customerLinkman");
        String customerEmail = request.getParameter("customerEmail");
        String customerDepositBank = request.getParameter("customerDepositBank");
        //建立对象，设置参数
        CustomerManagement ct= new CustomerManagement();
        ct.setCustomerManagementNo(customerlId);
        ct.setCustomerAbbreviation(customerAbbreviation);
        ct.setCustomerDepositBank(customerDepositBank);
        ct.setCustomerEmail(customerEmail);
        ct.setCustomerLinkman(customerLinkman);
        ct.setCustomerTel(customerTel);
        int n = customerService.addCustomerByNo(ct);
        if (n == 1) {
            System.err.println("-----------------增加成功！-------------------------------------------");
            List<CustomerManagement> customerList = customerService.queryAllCustomer();
            if (customerList != null) {
                model.addAttribute("customerList", customerList);
            }
        }
        return "view/basicinformation/customer/customerList";
    }
}
