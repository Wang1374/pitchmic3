package com.example.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.dao.UserAndRoleDao;
import com.example.demo.entity.UserAndRole;
import com.example.demo.service.UserAndRoleService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/11/03 22:25:59
 * @Version: V1.0
 */
@Service
public class UserAndRoleServiceImpl extends ServiceImpl<UserAndRoleDao, UserAndRole> implements UserAndRoleService {
    @Override
    public List<UserAndRole> getUserAndRole(Integer userId, Integer roleId) {
        return getBaseMapper().getUserAndRole(userId, roleId);
    }

    @Override
    public Integer removeByUserId(Integer userId) {
        return getBaseMapper().removeByUserId(userId);
    }
}
