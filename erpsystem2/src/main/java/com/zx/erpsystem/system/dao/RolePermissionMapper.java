package com.zx.erpsystem.system.dao;

import com.zx.erpsystem.system.model.RolePermission;
import org.springframework.stereotype.Repository;

@Repository
public interface RolePermissionMapper {
    int deleteByPrimaryKey(Integer rolePermissionId);

    int insert(RolePermission record);

    int insertSelective(RolePermission record);

    RolePermission selectByPrimaryKey(Integer rolePermissionId);

    int updateByPrimaryKeySelective(RolePermission record);

    int updateByPrimaryKey(RolePermission record);
}