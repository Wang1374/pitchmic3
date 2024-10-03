package com.example.demo.dao;

import com.example.demo.entity.Role;
import com.example.demo.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface RoleDao {
    List<Role> getRoleByUserId(@Param("userId")Integer id);
    List<Role> getRoleInfo(@Param("role") Role role);
    List<Role> getRoles();
    Role getRoleById(@Param("id") Integer id);
    Role getRoleByRoleValue(@Param("roleValue") String roleValue);
}
