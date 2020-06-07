package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.SysArea;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * (SysArea)表数据库访问层
 *
 * @author 
 * @since 2020-04-22 19:43:54
 */
@Repository
public interface SysAreaDao {

    /**
     * 通过ID查询单条数据
     *
     * @param areaId 主键
     * @return 实例对象
     */
    SysArea queryById(Long areaId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SysArea> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param sysArea 实例对象
     * @return 对象列表
     */
    List<SysArea> queryAll(SysArea sysArea);

    /**
     * 新增数据
     *
     * @param sysArea 实例对象
     * @return 影响行数
     */
    int insert(SysArea sysArea);

    /**
     * 修改数据
     *
     * @param sysArea 实例对象
     * @return 影响行数
     */
    int update(SysArea sysArea);

    /**
     * 通过主键删除数据
     *
     * @param areaId 主键
     * @return 影响行数
     */
    int deleteById(Long areaId);

}