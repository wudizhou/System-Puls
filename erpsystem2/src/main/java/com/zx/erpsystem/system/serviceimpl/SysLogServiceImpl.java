package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.SysLogDao;
import com.zx.erpsystem.system.model.SysLog;
import com.zx.erpsystem.system.service.SysLogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


/**
 * (SysLog)表服务实现类
 *
 * @author zhangzhou
 * @since 2020-04-22 19:43:54
 */
@Service("sysLogService")
public class SysLogServiceImpl implements SysLogService {
    @Resource
    private SysLogDao sysLogDao;

    /**
     * 通过ID查询单条数据
     *
     * @param logId 主键
     * @return 实例对象
     */
    @Override
    public SysLog queryById(Long logId) {
        return this.sysLogDao.queryById(logId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<SysLog> queryAllByLimit(int offset, int limit) {
        return this.sysLogDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param sysLog 实例对象
     * @return 实例对象
     */
    @Override
    public SysLog insert(SysLog sysLog) {
        this.sysLogDao.insert(sysLog);
        return sysLog;
    }

    /**
     * 修改数据
     *
     * @param sysLog 实例对象
     * @return 实例对象
     */
    @Override
    public SysLog update(SysLog sysLog) {
        this.sysLogDao.update(sysLog);
        return this.queryById(sysLog.getLogId());
    }

    /**
     * 通过主键删除数据
     *
     * @param logId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long logId) {
        return this.sysLogDao.deleteById(logId) > 0;
    }
}