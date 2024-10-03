package com.example.demo.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.entity.UserAndRole;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserAndRoleDao extends BaseMapper<UserAndRole> {
    Integer removeUserAndRole(@Param("userAndRole") UserAndRole userAndRole);
    List<UserAndRole> getUserAndRole(@Param("userId") Integer userId, @Param("roleId") Integer roleId);
    Integer removeByUserId(@Param("userId") Integer userId);
}
