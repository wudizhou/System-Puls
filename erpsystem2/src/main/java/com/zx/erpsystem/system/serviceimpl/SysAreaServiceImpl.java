package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.SysAreaDao;
import com.zx.erpsystem.system.model.SysArea;
import com.zx.erpsystem.system.service.SysAreaService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (SysArea)表服务实现类
 *
 * @author zhangzhou
 * @since 2020-04-22 19:43:54
 */
@Service("sysAreaService")
public class SysAreaServiceImpl implements SysAreaService {
    @Resource
    private SysAreaDao sysAreaDao;

    /**
     * 通过ID查询单条数据
     *
     * @param areaId 主键
     * @return 实例对象
     */
    @Override
    public SysArea queryById(Long areaId) {
        return this.sysAreaDao.queryById(areaId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<SysArea> queryAllByLimit(int offset, int limit) {
        return this.sysAreaDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param sysArea 实例对象
     * @return 实例对象
     */
    @Override
    public SysArea insert(SysArea sysArea) {
        this.sysAreaDao.insert(sysArea);
        return sysArea;
    }

    /**
     * 修改数据
     *
     * @param sysArea 实例对象
     * @return 实例对象
     */
    @Override
    public SysArea update(SysArea sysArea) {
        this.sysAreaDao.update(sysArea);
        return this.queryById(sysArea.getAreaId());
    }

    /**
     * 通过主键删除数据
     *
     * @param areaId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long areaId) {
        return this.sysAreaDao.deleteById(areaId) > 0;
    }
}