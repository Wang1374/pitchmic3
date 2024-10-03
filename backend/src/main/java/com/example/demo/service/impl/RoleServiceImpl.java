package com.example.demo.service.impl;

import com.example.demo.dao.RoleDao;
import com.example.demo.entity.Role;
import com.example.demo.entity.UserAndRole;
import com.example.demo.service.RoleService;
import com.example.demo.service.UserAndRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    RoleDao roleDao;

    @Autowired
    UserAndRoleService userAndRoleService;

    @Override
    public List<Role> getRoleByUserId(Integer id) {
        return roleDao.getRoleByUserId(id);
    }

    @Override
    public List<Role> getRoles() {
        return roleDao.getRoles();
    }

    @Transactional(rollbackFor = {Exception.class, RuntimeException.class})
    @Override
    public Boolean updateRole(List<UserAndRole> userAndRole) {
        AtomicReference<Boolean> result = new AtomicReference<>(false);
        userAndRoleService.removeByUserId(userAndRole.get(userAndRole.size() - 1).getUserId());
        userAndRole.forEach(role ->{
            if(userAndRoleService.getUserAndRole(role.getUserId(), role.getRoleId()).isEmpty()){
                userAndRoleService.save(role);
                result.set(true);
            }
        });
        return result.get();
    }
}
