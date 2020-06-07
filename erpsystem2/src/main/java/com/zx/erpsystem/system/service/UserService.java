package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserService {

	User queryUserByloginName(String loginName);

    int  updatepassword(User user);

    void addUser(User user);
}
