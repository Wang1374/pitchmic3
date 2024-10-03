package com.example.demo.filter;

import com.alibaba.fastjson2.JSON;
import com.example.demo.utils.JwtUtils;
import com.example.demo.utils.ResultUtils;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/01 22:59:46
 * @Version: V1.0
 */
public class JwtAuthenticationTokenFilter extends OncePerRequestFilter {

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        String token = request.getHeader("token");
        if(token == null){
            token = request.getHeader("Sec-Websocket-Protocol");
            response.setHeader("Sec-Websocket-Protocol", token);
        }
        if(token != null){
            JwtUtils.tokenVerify(token);
            filterChain.doFilter(request, response); //call filterChain.doFilter inside of JwtAuthentication
            //doFilter get http request permission, let request keep going
        }else{
            if(request.getRequestURI().equals("/login") || request.getRequestURI().equals("/loginout")
                    || request.getRequestURI().equals("/user/register")
                    || request.getRequestURI().equals("/user/verifyUser")
                    || request.getRequestURI().equals("/user/forgetPassword")){
                filterChain.doFilter(request, response);//get permission right away
            }else{
                response.setContentType("text/html; charset=utf-8"); //
                response.getWriter().write(JSON.toJSONString(
                        ResultUtils.error(
                                ResultUtils.result_code.RESULT_CODE_ERROR_NOT_LOGIN.getKey(),
                                ResultUtils.result_code.RESULT_CODE_ERROR_NOT_LOGIN.getValue())));
            }
        }
    }
}
