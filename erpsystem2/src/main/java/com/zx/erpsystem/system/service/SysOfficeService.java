package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.SysOffice;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * (SysOffice)表服务接口
 *
 * @author zhangzhou
 * @since 2020-04-22 19:43:54
 */
@Repository
public interface SysOfficeService {

    /**
     * 通过ID查询单条数据
     *
     * @param officeId 主键
     * @return 实例对象
     */
    SysOffice queryById(Long officeId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SysOffice> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param sysOffice 实例对象
     * @return 实例对象
     */
    SysOffice insert(SysOffice sysOffice);

    /**
     * 修改数据
     *
     * @param sysOffice 实例对象
     * @return 实例对象
     */
    SysOffice update(SysOffice sysOffice);

    /**
     * 通过主键删除数据
     *
     * @param officeId 主键
     * @return 是否成功
     */
    boolean deleteById(Long officeId);

}