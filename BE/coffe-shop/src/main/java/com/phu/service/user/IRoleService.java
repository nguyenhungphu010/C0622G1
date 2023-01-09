package com.phu.service.user;

import com.phu.model.Role;

import java.util.List;

public interface IRoleService {
    List<Role> findAllRole();

    List<Role> getAllRoles();

    List<Role> getRoleByUsername(String email);
}
