package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.PermissionMapper;
import com.zx.erpsystem.system.model.Permission;
import com.zx.erpsystem.system.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PermissionServiceImpl implements PermissionService {
	@Autowired
	private PermissionMapper permissionMapper;
//
//	@Override
	public List<Permission> queryMenuByUserId(int userId) {
		return permissionMapper.queryMenuByUserId(userId);
	}
//
//	@Override
//	public List<Permission> querypermissionByUserId(int userId) {
//		return permissionMapper.querypermissionByUserId(userId);
//	}
//
	@Override
	public List<Permission> querypermissionByPId_Son(int permissionId) {
		return permissionMapper.querypermissionByPId_Son(permissionId);
	}

	@Override
	public List<String> queryPerUrl(String usercode) {
		return permissionMapper.queryPerUrl(usercode);
	}

}
