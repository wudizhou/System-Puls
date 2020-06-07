package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.WsMessage;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * (WsMessage)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-26 09:55:35
 */
@Repository
public interface WsMessageMapper {

    /**
     * 通过ID查询单条数据
     *
     * @param messageid 主键
     * @return 实例对象
     */
    WsMessage queryById(Integer messageid);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<WsMessage> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param wsMessage 实例对象
     * @return 对象列表
     */
    List<WsMessage> queryAll(WsMessage wsMessage);

    /**
     * 新增数据
     *
     * @param wsMessage 实例对象
     * @return 影响行数
     */
    int insertSelective(WsMessage wsMessage);
    int insert(WsMessage wsMessage);

    /**
     * 修改数据
     *
     * @param wsMessage 实例对象
     * @return 影响行数
     */
    int update(WsMessage wsMessage);

    /**
     * 通过主键删除数据
     *
     * @param messageid 主键
     * @return 影响行数
     */
    int deleteById(Integer messageid);

    List<WsMessage> queryAllWsMessage();
}