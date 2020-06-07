package com.zx.erpsystem.system.utils.util;

import com.zx.erpsystem.system.service.SalesOrderService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 实现在ECHATRS中对返回的后台数据进行统一化的集中处理
 * @author  Zhang zhou
 * @date 2020-03-09 09:17
 */
public class ReturnEcDataDeal {
    @Autowired
    private static SalesOrderService salesOrderService;
    /**
     * Echarts中的季度销售统计模块
     *
     * @param name
     * @param FirstId
     * @param SecondId
     * @param ThirdId
     * @param ForthId
     * @return
     */
    public static Map<String, Object> getMapObject(String name, Integer FirstId, Integer SecondId, Integer ThirdId, Integer ForthId) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("product", name);
        map.put("第一季度", FirstId);
        map.put("第二季度", SecondId);
        map.put("第三季度", ThirdId);
        map.put("第四季度", ForthId);
        return map;
    }

    /**
     * Echarts中的季度销售统计模块
     * @param map1
     * @param map2
     * @param map3
     * @param map4
     * @return
     */
    public static List<Map<String, Object>> getListObject(Map<String, Object> map1,Map<String, Object> map2,Map<String, Object> map3,Map<String, Object> map4){
        List<Map<String, Object>> list = new ArrayList< Map<String, Object>>();
        list.add(map1);
        list.add(map2);
        list.add(map3);
        list.add(map4);
        return list;
    }

    /**
     * Echarts中产品每月销售统计与平均销售量模块
     * @return
     */

}
