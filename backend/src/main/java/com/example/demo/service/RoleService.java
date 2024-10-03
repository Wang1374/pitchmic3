package com.example.demo.service;

import com.example.demo.entity.Role;
import com.example.demo.entity.UserAndRole;
import org.springframework.stereotype.Service;

import java.util.List;

public interface RoleService {
    List<Role> getRoleByUserId(Integer id);
    List<Role> getRoles();
    Boolean updateRole(List<UserAndRole> userAndRole);
}
