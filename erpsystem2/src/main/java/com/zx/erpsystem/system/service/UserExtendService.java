package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.UserExtend;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * (UserExtend)表服务接口
 *
 * @author zhangzhou
 * @since 2020-04-22 19:43:54
 */
@Repository
public interface UserExtendService {

    /**
     * 通过ID查询单条数据
     *
     * @param userExtendId 主键
     * @return 实例对象
     */
    UserExtend queryById(Long userExtendId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<UserExtend> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param userExtend 实例对象
     * @return 实例对象
     */
    UserExtend insert(UserExtend userExtend);

    /**
     * 修改数据
     *
     * @param userExtend 实例对象
     * @return 实例对象
     */
    UserExtend update(UserExtend userExtend);

    /**
     * 通过主键删除数据
     *
     * @param userExtendId 主键
     * @return 是否成功
     */
    boolean deleteById(Long userExtendId);

    int savePrivateMessage(UserExtend userExtend);

    long queryUserExtendId(Integer userId);

    String queryLoginIp(Long upi);

    int setOldLoginIp(String s2,Long upi);

    int setCurrentLoginIp(String s, long upi);

    List<UserExtend> queryByEmail(String email);

    int updateNewPaasord(UserExtend userExtend);

    List<UserExtend> queryAllUe();
}