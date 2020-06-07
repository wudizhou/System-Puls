package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.UserMapper;
import com.zx.erpsystem.system.model.User;
import com.zx.erpsystem.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper ;

	@Override
	public User queryUserByloginName(String loginName) {

		return userMapper.queryUserByloginName(loginName);
	}

	@Override
	public int updatepassword(User user) {
		return userMapper.updatepassword(user);
	}

	@Override
	public void addUser(User user) {
		userMapper.addUser(user);
	}

}
