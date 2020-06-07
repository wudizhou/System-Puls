package com.zx.erpsystem.system.dao;

import org.springframework.stereotype.Repository;
import com.zx.erpsystem.system.model.User;
@Repository
public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User queryUserByloginName(String loginName);

    int updatepassword(User user);

    void addUser(User user);
}