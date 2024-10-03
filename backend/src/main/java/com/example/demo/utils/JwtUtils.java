package com.example.demo.utils;

import com.alibaba.fastjson.JSON;
import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.example.demo.entity.JwtAuthentication;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.Date;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/09/11 22:31:15
 * @Version: V1.0
 */
public class JwtUtils {
    //salt
    private static final String secret = "superSecret";
    //expire time
    private static final Long overdueDate = 1000L * 60 * 60 * 24;
    //create token
    public static String token(Authentication authentication){
        return JWT.create()
                //System.currentTimeMillis get current timestamp
                .withExpiresAt(new Date(System.currentTimeMillis() + overdueDate))
                .withAudience(JSON.toJSONString(authentication)).sign(Algorithm.HMAC256(secret));
    }
    public static void tokenVerify(String token){
        JWTVerifier jwtVerifier = JWT.require(Algorithm.HMAC256(secret)).build();
        jwtVerifier.verify(token);//verify if token validate
        JWT.decode(token).getExpiresAt(); // decode token, get expired time, later add expired but login, then extend expired time
        String json = JSON.parseObject(JWT.decode(token).getAudience().get(0)).toJSONString();//get client information
        //json switch to JwtAuthentication
        JwtAuthentication jwtAuthentication = JSON.parseObject(json, JwtAuthentication.class);
        //JwtAuthentication.class is java reflection, is the compiled JwtAuthentication class
        SecurityContextHolder.getContext().setAuthentication(jwtAuthentication);//put user information into session context
//        JSON.parseObject(JWT.decode(token).getAudience().get(0)).toJSONString()
    }
}
