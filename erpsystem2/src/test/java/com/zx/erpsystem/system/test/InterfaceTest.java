package com.zx.erpsystem.system.test;

import com.zx.erpsystem.system.model.ProductRegistration;
import com.zx.erpsystem.system.service.ProductionService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.List;

/**
 * @author XIANGXIN
 * @date 2020/3/27 - 11:45
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath*:spring/applicationContext*.xml")
public class InterfaceTest {
    @Autowired
    private ProductionService productionService;
    @Test
    public void test(){
        List<ProductRegistration> productList = productionService.queryProductionList();
        System.out.println(productList.toString());
    }

    @Test
    public void out(){
        System.out.println("hello");
    }

}
