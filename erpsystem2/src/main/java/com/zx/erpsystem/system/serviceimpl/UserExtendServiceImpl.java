package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.UserExtendDao;
import com.zx.erpsystem.system.model.UserExtend;
import com.zx.erpsystem.system.service.UserExtendService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;



/**
 * (UserExtend)表服务实现类
 *
 * @author zhangzhou
 * @since 2020-04-22 19:43:54
 */
@Service("userExtendService")
public class UserExtendServiceImpl implements UserExtendService {
    @Resource
    private UserExtendDao userExtendDao;

    /**
     * 通过ID查询单条数据
     *
     * @param userExtendId 主键
     * @return 实例对象
     */
    @Override
    public UserExtend queryById(Long userExtendId) {
        return this.userExtendDao.queryById(userExtendId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UserExtend> queryAllByLimit(int offset, int limit) {
        return this.userExtendDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param userExtend 实例对象
     * @return 实例对象
     */
    @Override
    public UserExtend insert(UserExtend userExtend) {
        this.userExtendDao.insert(userExtend);
        return userExtend;
    }

    /**
     * 修改数据
     *
     * @param userExtend 实例对象
     * @return 实例对象
     */
    @Override
    public UserExtend update(UserExtend userExtend) {
        this.userExtendDao.update(userExtend);
        return this.queryById(userExtend.getUserExtendId());
    }

    /**
     * 通过主键删除数据
     *
     * @param userExtendId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long userExtendId) {
        return this.userExtendDao.deleteById(userExtendId) > 0;
    }

    @Override
    public int savePrivateMessage(UserExtend userExtend) {
        return userExtendDao.update(userExtend);
    }

    @Override
    public long queryUserExtendId(Integer userId) {
        return userExtendDao.queryUserExtendId(userId);
    }

    @Override
    public String queryLoginIp(Long upi) {
        return userExtendDao.queryLoginIp(upi);
    }

    @Override
    public int setOldLoginIp(String s2,Long upi) {
        return userExtendDao.setOldLoginIp(s2,upi);
    }

    @Override
    public int setCurrentLoginIp(String s, long upi) {
        return userExtendDao.setCurrentLoginIp( s,upi);
    }

    @Override
    public List<UserExtend> queryByEmail(String email) {
        return userExtendDao.queryByEmail(email);
    }

    @Override
    public int updateNewPaasord(UserExtend userExtend) {
        return userExtendDao.updateNewPaasord(userExtend);
    }

    @Override
    public List<UserExtend> queryAllUe() {
        return userExtendDao.queryAllUe();
    }

}