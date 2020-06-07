package com.zx.erpsystem.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 订单管理模块
 * @author XIANGXIN
 * @date 2020/3/8 - 22:51
 */
@Controller
@Transactional(rollbackFor = Exception.class)
@RequestMapping("/orderManagement")
public class OrderManagement {
}
