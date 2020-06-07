package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.Permission;
import org.springframework.stereotype.Repository;

import java.util.List;

@ Repository
public interface PermissionMapper {
    int deleteByPrimaryKey(Integer perId);

    int insert(Permission record);

    int insertSelective(Permission record);

    Permission selectByPrimaryKey(Integer perId);

    int updateByPrimaryKeySelective(Permission record);

    int updateByPrimaryKey(Permission record);

    List<Permission> queryMenuByUserId(int userId);

    List<Permission> querypermissionByPId_Son(int permissionId);

    List<String> queryPerUrl(String usercode);
}