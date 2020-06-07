package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.UserExtend;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * (UserExtend)表数据库访问层
 *
 * @author 
 * @since 2020-04-22 19:43:54
 */
@Repository
public interface UserExtendDao {

    /**
     * 通过ID查询单条数据
     *
     * @param userExtendId 主键
     * @return 实例对象
     */
    UserExtend queryById(Long userExtendId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<UserExtend> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param userExtend 实例对象
     * @return 对象列表
     */
    List<UserExtend> queryAll(UserExtend userExtend);

    /**
     * 新增数据
     *
     * @param userExtend 实例对象
     * @return 影响行数
     */
    int insert(UserExtend userExtend);

    /**
     * 修改数据
     *
     * @param userExtend 实例对象
     * @return 影响行数
     */
    int update(UserExtend userExtend);

    /**
     * 通过主键删除数据
     *
     * @param userExtendId 主键
     * @return 影响行数
     */
    int deleteById(Long userExtendId);

    long queryUserExtendId(Integer userId);

    String queryLoginIp(Long upi);

    int setOldLoginIp(@Param("s2") String s2,@Param("upi")Long upi);

    int setCurrentLoginIp(@Param("s")String s,@Param("upi")long upi);

    List<UserExtend> queryByEmail(String email);

    int insertNewPassword(String pasword2);

    int updateNewPaasord(UserExtend userExtend);

    List<UserExtend> queryAllUe();
}