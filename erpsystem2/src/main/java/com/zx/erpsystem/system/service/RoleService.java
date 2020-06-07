package com.zx.erpsystem.system.service;

import com.zx.erpsystem.system.model.Role;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleService {

    Role queryRoleNameByLoginName(String usercode);
}
