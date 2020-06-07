package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.RoleExtend;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * (RoleExtend)表服务接口
 *
 * @author zhangzhou
 * @since 2020-04-22 19:43:53
 */
@Repository
public interface RoleExtendService {

    /**
     * 通过ID查询单条数据
     *
     * @param roleExtendId 主键
     * @return 实例对象
     */
    RoleExtend queryById(Long roleExtendId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<RoleExtend> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param roleExtend 实例对象
     * @return 实例对象
     */
    RoleExtend insert(RoleExtend roleExtend);

    /**
     * 修改数据
     *
     * @param roleExtend 实例对象
     * @return 实例对象
     */
    RoleExtend update(RoleExtend roleExtend);

    /**
     * 通过主键删除数据
     *
     * @param roleExtendId 主键
     * @return 是否成功
     */
    boolean deleteById(Long roleExtendId);

}