package com.phu.service.user.impl;

import com.phu.model.Role;
import com.phu.repository.user.RoleRepository;
import com.phu.service.user.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleService implements IRoleService {
    @Autowired
    private RoleRepository roleRepository;

    @Override
    public List<Role> findAllRole() {
        return this.roleRepository.findAll();
    }

    @Override
    public List<Role> getAllRoles() {
        return this.roleRepository.finAllRole();
    }

    @Override
    public List<Role> getRoleByUsername(String username) {
        return this.roleRepository.findRoleByUsername(username);
    }
}
