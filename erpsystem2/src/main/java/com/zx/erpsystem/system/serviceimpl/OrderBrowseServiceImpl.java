package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.OrderBrowseMapper;
import com.zx.erpsystem.system.model.OrderBrowse;
import com.zx.erpsystem.system.service.OrderBrowseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (OrderBrowse)表服务实现类
 *
 * @author makejava
 * @since 2020-04-08 09:03:49
 */
@Service("orderBrowseService")
public class OrderBrowseServiceImpl implements OrderBrowseService {
    @Resource
    private OrderBrowseMapper orderBrowseMapper;

    /**
     * 通过ID查询单条数据
     *
     * @param orderNo 主键
     * @return 实例对象
     */
    @Override
    public OrderBrowse queryById(Integer orderNo) {
        return this.orderBrowseMapper.queryById(orderNo);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<OrderBrowse> queryAllByLimit(int offset, int limit) {
        return this.orderBrowseMapper.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param orderBrowse 实例对象
     * @return 实例对象
     */
    @Override
    public OrderBrowse insert(OrderBrowse orderBrowse) {
        this.orderBrowseMapper.insert(orderBrowse);
        return orderBrowse;
    }

    /**
     * 修改数据
     *
     * @param orderBrowse 实例对象
     * @return 实例对象
     */
    @Override
    public OrderBrowse update(OrderBrowse orderBrowse) {
        this.orderBrowseMapper.update(orderBrowse);
        return this.queryById(orderBrowse.getOrderNo());
    }

    /**
     * 通过主键删除数据
     *
     * @param orderNo 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer orderNo) {
        return this.orderBrowseMapper.deleteById(orderNo) > 0;
    }
}