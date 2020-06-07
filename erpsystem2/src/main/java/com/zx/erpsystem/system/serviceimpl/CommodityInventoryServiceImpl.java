package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.CommodityInventoryManagementMapper;
import com.zx.erpsystem.system.model.CommodityInventoryManagement;
import com.zx.erpsystem.system.service.CommodityInventoryService;
import com.zx.erpsystem.system.utils.pagingUtil.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author Zhang Zhou
 * @date 2020-03-13 11:29
 */
@Service
public class CommodityInventoryServiceImpl implements CommodityInventoryService {
    @Autowired
    private CommodityInventoryManagementMapper commodityInventoryManagementMapper;
        @Override
        public PageBean<CommodityInventoryManagement> queryAllCommodityInventory(int pc, int ps) {
            PageBean<CommodityInventoryManagement> pb=new PageBean<>();
            pb.setPc(pc);
            pb.setPs(ps);
            //查询总记录数
            int tr=commodityInventoryManagementMapper.queyAllCount();
            pb.setTr(tr);
            //查询当前页记录
            List<CommodityInventoryManagement> queryAllCommodityInventory = commodityInventoryManagementMapper.queryAllCommodityInventory2((pc - 1) * ps, ps);
            pb.setBeanList(queryAllCommodityInventory);
            return pb;
        }
    @Override
    public int queyAllCount() {

        return commodityInventoryManagementMapper.queyAllCount();
    }

    @Override
    public int deleteMany(int[] ids) {
        return commodityInventoryManagementMapper.deleteMany(ids);
    }

    @Override
    public int deletecommodityInventoryByNo(Integer commodityInventoryNo) {
        return commodityInventoryManagementMapper.deleteByPrimaryKey(commodityInventoryNo);
    }

    @Override
    public CommodityInventoryManagement getsalesOrder(int id2) {
        return commodityInventoryManagementMapper.selectByPrimaryKey(id2);
    }

    @Override
    public int updatecommodityInventory(CommodityInventoryManagement cim) {
        return commodityInventoryManagementMapper.updateByPrimaryKeySelective(cim);
    }

    @Override
    public int addcommodityInventory(CommodityInventoryManagement cim) {
        return commodityInventoryManagementMapper.insert(cim);
    }

    @Override
    public PageBean<CommodityInventoryManagement> queryAllCommodityInventoryByKeWords(int pc, int ps, String value) {
        PageBean<CommodityInventoryManagement> pb=new PageBean<>();
        pb.setPc(pc);
        pb.setPs(ps);
        //查询总记录数
        int tr=commodityInventoryManagementMapper.queyAllCountByValue(value);
        System.err.println("------------------selectCommodityInventory-------------------------------------------"+tr);
        pb.setTr(tr);
        //查询当前页记录
        List<CommodityInventoryManagement> queryAllCommodityInventory = commodityInventoryManagementMapper.queryAllCommodityInventory2ByValue((pc - 1) * ps, ps,value);
        pb.setBeanList(queryAllCommodityInventory);
        return pb;
    }

    @Override
    public PageBean<CommodityInventoryManagement> queryAllCommodityInventoryByKeWords2(Map<String, Object> map) {
        PageBean<CommodityInventoryManagement> pb=new PageBean<>();
        pb.setPc((Integer) map.get("pc1"));
        pb.setPs((Integer) map.get("ps"));
        //查询总记录数
        Integer tr=commodityInventoryManagementMapper.queyAllCountByValue2(map);
        pb.setTr(tr);
        //查询当前页记录
        List<CommodityInventoryManagement> queryAllCommodityInventory = commodityInventoryManagementMapper.queryAllCommodityInventory2ByValue2(map);
        pb.setBeanList(queryAllCommodityInventory);
        return pb;
    }
}
