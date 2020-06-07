package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.WsMessage;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * (WsMessage)表服务接口
 *
 * @author zhangzhou
 * @since 2020-03-26 09:51:13
 */
@Repository
public interface WsMessageService {

    /**
     * 通过ID查询单条数据
     *
     * @param messageid 主键
     * @return 实例对象
     */
    WsMessage queryById(Integer messageid);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<WsMessage> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param wsMessage 实例对象
     * @return 实例对象
     */
    int insert(WsMessage wsMessage);

    /**
     * 修改数据
     *
     * @param wsMessage 实例对象
     * @return 实例对象
     */
    WsMessage update(WsMessage wsMessage);

    /**
     * 通过主键删除数据
     *
     * @param messageid 主键
     * @return 是否成功
     */
    boolean deleteById(Integer messageid);

    List<WsMessage> queryAllWsMessage();
}