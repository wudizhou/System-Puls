package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.SysArea;
import org.springframework.stereotype.Repository;

import java.util.List;



/**
 * (SysArea)表服务接口
 *
 * @author zhangzhou
 * @since 2020-04-22 19:43:54
 */
@Repository
public interface SysAreaService {

    /**
     * 通过ID查询单条数据
     *
     * @param areaId 主键
     * @return 实例对象
     */
    SysArea queryById(Long areaId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SysArea> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param sysArea 实例对象
     * @return 实例对象
     */
    SysArea insert(SysArea sysArea);

    /**
     * 修改数据
     *
     * @param sysArea 实例对象
     * @return 实例对象
     */
    SysArea update(SysArea sysArea);

    /**
     * 通过主键删除数据
     *
     * @param areaId 主键
     * @return 是否成功
     */
    boolean deleteById(Long areaId);

}