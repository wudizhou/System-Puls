package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.OrderBrowse;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * (OrderBrowse)表数据库访问层
 *
 * @author makejava
 * @since 2020-04-08 08:57:49
 */
@Repository
public interface OrderBrowseMapper {

    /**
     * 通过ID查询单条数据
     *
     * @param orderNo 主键
     * @return 实例对象
     */
    OrderBrowse queryById(Integer orderNo);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<OrderBrowse> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param orderBrowse 实例对象
     * @return 对象列表
     */
    List<OrderBrowse> queryAll(OrderBrowse orderBrowse);

    /**
     * 新增数据
     *
     * @param orderBrowse 实例对象
     * @return 影响行数
     */
    int insert(OrderBrowse orderBrowse);

    /**
     * 修改数据
     *
     * @param orderBrowse 实例对象
     * @return 影响行数
     */
    int update(OrderBrowse orderBrowse);

    /**
     * 通过主键删除数据
     *
     * @param orderNo 主键
     * @return 影响行数
     */
    int deleteById(Integer orderNo);

}