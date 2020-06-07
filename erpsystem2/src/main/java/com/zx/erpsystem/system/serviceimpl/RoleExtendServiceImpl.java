package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.RoleExtendDao;
import com.zx.erpsystem.system.model.RoleExtend;
import com.zx.erpsystem.system.service.RoleExtendService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (RoleExtend)表服务实现类
 *
 * @author 
 * @since 2020-04-22 19:43:53
 */
@Service("roleExtendService")
public class RoleExtendServiceImpl implements RoleExtendService {
    @Resource
    private RoleExtendDao roleExtendDao;

    /**
     * 通过ID查询单条数据
     *
     * @param roleExtendId 主键
     * @return 实例对象
     */
    @Override
    public RoleExtend queryById(Long roleExtendId) {
        return this.roleExtendDao.queryById(roleExtendId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<RoleExtend> queryAllByLimit(int offset, int limit) {
        return this.roleExtendDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param roleExtend 实例对象
     * @return 实例对象
     */
    @Override
    public RoleExtend insert(RoleExtend roleExtend) {
        this.roleExtendDao.insert(roleExtend);
        return roleExtend;
    }

    /**
     * 修改数据
     *
     * @param roleExtend 实例对象
     * @return 实例对象
     */
    @Override
    public RoleExtend update(RoleExtend roleExtend) {
        this.roleExtendDao.update(roleExtend);
        return this.queryById(roleExtend.getRoleExtendId());
    }

    /**
     * 通过主键删除数据
     *
     * @param roleExtendId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long roleExtendId) {
        return this.roleExtendDao.deleteById(roleExtendId) > 0;
    }
}