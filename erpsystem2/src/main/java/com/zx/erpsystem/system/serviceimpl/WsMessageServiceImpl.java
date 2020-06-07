package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.WsMessageMapper;
import com.zx.erpsystem.system.model.WsMessage;
import com.zx.erpsystem.system.service.WsMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (WsMessage)表服务实现类
 *
 * @author zhangzhou
 * @since 2020-03-26 09:53:56
 */
@Service("wsMessageService")
public class WsMessageServiceImpl implements WsMessageService {
    @Autowired
    private WsMessageMapper wsMessageMapper;

    /**
     * 通过ID查询单条数据
     *
     * @param messageid 主键
     * @return 实例对象
     */
    @Override
    public WsMessage queryById(Integer messageid) {
        return this.wsMessageMapper.queryById(messageid);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<WsMessage> queryAllByLimit(int offset, int limit) {
        return this.wsMessageMapper.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param wsMessage 实例对象
     * @return 实例对象
     */
    @Override
    public int insert(WsMessage wsMessage) {
       return wsMessageMapper.insertSelective(wsMessage);
    }

    /**
     * 修改数据
     *
     * @param wsMessage 实例对象
     * @return 实例对象
     */
    @Override
    public WsMessage update(WsMessage wsMessage) {
        this.wsMessageMapper.update(wsMessage);
        return this.queryById(wsMessage.getMessageId());
}
    /**
     * 通过主键删除数据
     *
     * @param messageid 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer messageid) {
        return this.wsMessageMapper.deleteById(messageid) > 0;
    }

    @Override
    public List<WsMessage> queryAllWsMessage() {
        return wsMessageMapper.queryAllWsMessage();
    }
}