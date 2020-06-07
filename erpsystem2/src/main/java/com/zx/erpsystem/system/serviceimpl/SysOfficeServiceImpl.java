package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.SysOfficeDao;
import com.zx.erpsystem.system.model.SysOffice;
import com.zx.erpsystem.system.service.SysOfficeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
/**
 * (SysOffice)表服务实现类
 *
 * @author zhangzhou
 * @since 2020-04-22 19:43:54
 */
@Service("sysOfficeService")
public class SysOfficeServiceImpl implements SysOfficeService {
    @Resource
    private SysOfficeDao sysOfficeDao;

    /**
     * 通过ID查询单条数据
     *
     * @param officeId 主键
     * @return 实例对象
     */
    @Override
    public SysOffice queryById(Long officeId) {
        return this.sysOfficeDao.queryById(officeId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<SysOffice> queryAllByLimit(int offset, int limit) {
        return this.sysOfficeDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param sysOffice 实例对象
     * @return 实例对象
     */
    @Override
    public SysOffice insert(SysOffice sysOffice) {
        this.sysOfficeDao.insert(sysOffice);
        return sysOffice;
    }

    /**
     * 修改数据
     *
     * @param sysOffice 实例对象
     * @return 实例对象
     */
    @Override
    public SysOffice update(SysOffice sysOffice) {
        this.sysOfficeDao.update(sysOffice);
        return this.queryById(sysOffice.getOfficeId());
    }

    /**
     * 通过主键删除数据
     *
     * @param officeId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long officeId) {
        return this.sysOfficeDao.deleteById(officeId) > 0;
    }
}