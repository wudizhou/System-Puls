package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.SysLog;
import org.springframework.stereotype.Repository;

import java.util.List;



/**
 * (SysLog)表服务接口
 *
 * @author zhangzhou
 * @since 2020-04-22 19:43:54
 */
@Repository
public interface SysLogService {

    /**
     * 通过ID查询单条数据
     *
     * @param logId 主键
     * @return 实例对象
     */
    SysLog queryById(Long logId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SysLog> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param sysLog 实例对象
     * @return 实例对象
     */
    SysLog insert(SysLog sysLog);

    /**
     * 修改数据
     *
     * @param sysLog 实例对象
     * @return 实例对象
     */
    SysLog update(SysLog sysLog);

    /**
     * 通过主键删除数据
     *
     * @param logId 主键
     * @return 是否成功
     */
    boolean deleteById(Long logId);

}