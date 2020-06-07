package com.zx.erpsystem.system.serviceimpl;

import com.zx.erpsystem.system.dao.RoleMapper;
import com.zx.erpsystem.system.model.Role;
import com.zx.erpsystem.system.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper roleMapper;
    @Override
    public Role queryRoleNameByLoginName(String usercode) {
        return roleMapper.queryRoleNameByLoginName(usercode);
    }
}
