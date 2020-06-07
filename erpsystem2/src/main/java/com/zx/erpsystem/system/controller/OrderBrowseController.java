package com.zx.erpsystem.system.controller;
import com.zx.erpsystem.system.model.OrderBrowse;
import com.zx.erpsystem.system.service.OrderBrowseService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;

/**
 * (OrderBrowse)表控制层
 *
 * @author makejava
 * @since 2020-04-08 09:02:24
 */
@Controller
@RequestMapping("orderBrowse")
public class OrderBrowseController {
    /**
     * 服务对象
     */
    @Resource
    private OrderBrowseService orderBrowseService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public OrderBrowse selectOne(Integer id) {
        return this.orderBrowseService.queryById(id);
    }

}