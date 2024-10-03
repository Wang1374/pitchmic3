package com.example.demo.dao;

import com.example.demo.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserDao {
    User login(@Param("accountNumber") String accountNumber);
    Integer register(@Param("user") User user);
    List<User> getUserInfos(@Param("user") User user);
    User getUserById(@Param("id") Integer id);
    List<User> getUserByTeamId(@Param("id") Integer id);
    Integer updateUser(@Param("user") User user);
    List<User> getUserList();
    User checkEmailAndPhone(@Param("emailOrPhone") String emailOrPhone);
    List<User> getNotCurrentUser(@Param("id") Integer id);
    Integer removeUser(@Param("id") Integer id);
}
