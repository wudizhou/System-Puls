package com.zx.erpsystem.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 生产管理模块
 * @author XIANGXIN
 * @date 2020/3/8 - 22:49
 */
@Controller
@Transactional(rollbackFor = Exception.class)
@RequestMapping("/productionManagement")
public class ProductionManagement {
}
