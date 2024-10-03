package com.example.demo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.demo.entity.UserAndRole;

import java.util.List;

public interface UserAndRoleService extends IService<UserAndRole> {
    List<UserAndRole> getUserAndRole(Integer userId, Integer roleId);
    Integer removeByUserId(Integer userId);
}
