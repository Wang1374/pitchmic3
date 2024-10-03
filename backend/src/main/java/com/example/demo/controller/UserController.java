package com.example.demo.controller;

import com.example.demo.entity.InvitationRecord;
import com.example.demo.entity.User;
import com.example.demo.service.InvitationRecordService;
import com.example.demo.service.UserService;
import com.example.demo.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/09/01 23:37:27
 * @Version: V1.0
 */
@CrossOrigin //cross domain
@RestController //return json format, string
@RequestMapping("/user") // request path
public class UserController extends CommonalityController{
    @Autowired
    UserService userService;

    @Autowired
    InvitationRecordService invitationRecordService;

    @GetMapping("/select")
    public ResultUtils select(String name){
        return ResultUtils.success();
    }
    @PostMapping("/register")
    public ResultUtils register(@RequestBody User user){
        if(user.getCode() == null){
            return ResultUtils.error("invitation code is required");
        }
        user = userService.register(user);
        if(user == null){
            return ResultUtils.error("register fail");
        }
        return ResultUtils.success(user);
    }
    @PostMapping("/verifyUser")
    public ResultUtils verifyUser(@RequestBody User user){
        List<User> userList = userService.getUserInfos(user);
        Map<String, Boolean> result = new HashMap<>();
        if(userList != null && userList.size() > 0){
            result.put("result", false);
            return ResultUtils.error(result);
        }else{
            result.put("result", true);
            return ResultUtils.success(result);
        }
    }

    @PostMapping("createInviteCode")
    public ResultUtils createInviteCode(@RequestBody InvitationRecord invitationRecord){
        invitationRecord.setInviterId(getUserInfo().getId());
        return ResultUtils.success(invitationRecordService.createInvite(invitationRecord));
    }
    @PostMapping("updateUser")
    public ResultUtils updateUser(User user,@DefaultValue(value = "") MultipartFile file){
        user.setId(getUserInfo().getId());
        return ResultUtils.success(userService.updateUser(user,file));
    }
    @GetMapping("getInvites")
    public ResultUtils getInvites(){
        return ResultUtils.success(invitationRecordService.getInvitationRecordByUserId(getUserInfo().getId()));
    }

    @GetMapping("getUserList")
    public ResultUtils getUserList(){
        return ResultUtils.success(userService.getUserList());
    }

    @GetMapping("forgetPassword")
    public ResultUtils forgetPassword(String emailOrPhone){
        return ResultUtils.success(userService.forgetPassword(emailOrPhone));
    }

    @GetMapping("notCurrentUser")
    public ResultUtils notCurrentUser(){
        return ResultUtils.success(userService.getNotCurrentUser(getUserInfo().getId()));
    }
    @GetMapping("removeUser")
    public ResultUtils removeUser(Integer id){
        return ResultUtils.success(userService.removeUser(id));
    }

}








