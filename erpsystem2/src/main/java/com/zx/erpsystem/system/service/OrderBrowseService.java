package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.OrderBrowse;
import java.util.List;

/**
 * (OrderBrowse)表服务接口
 *
 * @author makejava
 * @since 2020-04-08 09:03:47
 */
public interface OrderBrowseService {

    /**
     * 通过ID查询单条数据
     *
     * @param orderNo 主键
     * @return 实例对象
     */
    OrderBrowse queryById(Integer orderNo);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<OrderBrowse> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param orderBrowse 实例对象
     * @return 实例对象
     */
    OrderBrowse insert(OrderBrowse orderBrowse);

    /**
     * 修改数据
     *
     * @param orderBrowse 实例对象
     * @return 实例对象
     */
    OrderBrowse update(OrderBrowse orderBrowse);

    /**
     * 通过主键删除数据
     *
     * @param orderNo 主键
     * @return 是否成功
     */
    boolean deleteById(Integer orderNo);

}