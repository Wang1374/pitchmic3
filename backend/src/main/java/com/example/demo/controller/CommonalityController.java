package com.example.demo.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.demo.entity.User;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/13 21:51:16
 * @Version: V1.0
 */
@CrossOrigin
public class CommonalityController {

    public User getUserInfo(){
        return JSONObject.parseObject(JSONObject.toJSONString(SecurityContextHolder.getContext().getAuthentication().getPrincipal()), User.class);
    }
}
