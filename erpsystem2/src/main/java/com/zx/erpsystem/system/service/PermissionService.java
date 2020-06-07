package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.Permission;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PermissionService {
//
	List<Permission> queryMenuByUserId(int userId);
//
//	List<Permission> querypermissionByUserId(int userId);
//
	List<Permission> querypermissionByPId_Son(int permissionId);

	List<String> queryPerUrl(String usercode);
}
