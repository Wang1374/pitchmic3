package com.example.demo.service;

import com.example.demo.entity.User;
import com.example.demo.utils.ResultUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface UserService {
    User login(String username);
    User register(User user);
    List<User> getUserInfos(User user);
    User updateUser(User user, MultipartFile file);
    List<User> getUserList();
    String forgetPassword(String emailOrPhone);
    List<User> getNotCurrentUser(Integer id);
    Boolean removeUser(Integer id);
}
