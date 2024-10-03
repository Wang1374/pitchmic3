package com.example.demo.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.example.demo.entity.Role;
import com.example.demo.entity.User;
import com.example.demo.filter.JwtAuthenticationTokenFilter;
import com.example.demo.service.RoleService;
import com.example.demo.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationEntryPointFailureHandler;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import java.io.IOException;
import java.util.List;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/09/01 23:32:27
 * @Version: V1.0
 */

@Configuration
@EnableWebSecurity
public class SecurityConfig implements UserDetailsService {
    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Bean
   public SecurityFilterChain filterChain(HttpSecurity security) throws Exception {

        //authorizeHttpRequests -> which path need authorize?  :/user/info role -> current login user
        //permitAll -> any one can visit this path admin / user
        //hasAnyRole -> verify which role is visiting the website
        //formLogin -> login setting
        //loginProcessUrl -> login interface
        //successHandler -> login success interface
        //failureHandler -> login fail interface
       return security
               .authorizeHttpRequests(
                       authorization ->
                       authorization.requestMatchers("/login")
                               .permitAll()
                               .requestMatchers("/user/verifyUser")
                               .permitAll()
                               .requestMatchers("/user/register")
                               .permitAll()
                               .requestMatchers("/user/**")
                               .permitAll()
                               .requestMatchers("/team/**")
                               .permitAll()
                               .requestMatchers("/liveRecords/**")
                               .permitAll()
                               .requestMatchers("/liveRegister/**")
                               .permitAll()
                               .requestMatchers("/deviceSchema")
                               .permitAll()
                               .requestMatchers("/liveStream")
                               .permitAll()
                               .requestMatchers("/user/forgetPassword")
                               .permitAll()
                               .anyRequest().authenticated())
               //exception handling public class
               .exceptionHandling(exceptionHandlingConfigurer ->
                       exceptionHandlingConfigurer
                               .accessDeniedHandler((request, response, accessDeniedException) ->{
                                   //handle no authentication exception, e.g: normal user access admin account
                                   System.out.println(accessDeniedException.getMessage());
                                   response.setContentType("text/html; charset=utf-8");
                                   response.getWriter().write(JSON.toJSONString(ResultUtils.error(ResultUtils.result_code.RESULT_CODE_ERROR_NOT_AUT.getKey(), ResultUtils.result_code.RESULT_CODE_ERROR_NOT_AUT.getValue())));
                               })
                               .authenticationEntryPoint((request, response, authException)->{
                                    response.setContentType("text/html; charset=utf-8");
                                    response.getWriter().write(JSON.toJSONString(
                                            ResultUtils.error(
                                                    ResultUtils.result_code.RESULT_CODE_ERROR_NOT_LOGIN.getKey(),
                                                    ResultUtils.result_code.RESULT_CODE_ERROR_NOT_LOGIN.getValue())));
                                })
                       )
               .formLogin(
                     login ->
                     login   //visit address
                             .loginProcessingUrl("/login")
                             //visit success
                             .successHandler(new AuthenticationSuccessHandler() {
                                 //customize the fcn of login successfully
                                 @Override
                                 public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
                                     response.setContentType("text/html; charset=utf-8");
                                     JSONObject jsonObject = new JSONObject();
                                     jsonObject.put("token", JwtUtils.token(authentication));
                                     jsonObject.put("userInfo", JSONObject.toJSONString(authentication.getPrincipal()).replace("{\"$ref\":\"$.authorities\"}", ""));
                                     response.getWriter().write(JSONObject.toJSONString(ResultUtils.success(jsonObject)));
                                 }
                             })
                             .failureHandler(new AuthenticationFailureHandler() {
                                 @Override
                                 public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
                                     response.setContentType("text/html; charset=utf-8");
                                     response.getWriter().write(JSON.toJSONString(ResultUtils.error("401", "username or password wrong")));
                                 }
                             })

               )
               //add customized JwtAuthenticationTokenFilter class after UsernamePasswordAuthenticationFilter
               //UsernamePasswordAuthenticationFilter exist in sping security
               //add filter after verified the username and password
               .addFilterAfter(new JwtAuthenticationTokenFilter(), UsernamePasswordAuthenticationFilter.class)
               //cors is turn on cross domain
               .cors(Customizer.withDefaults())
               //turn off csrf, we need to customize the verfication process
               .csrf(AbstractHttpConfigurer :: disable)
               .build();
   }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        if(username != null){
            User user = userService.login(username);
            if(user != null){
                List<Role> role = roleService.getRoleByUserId(user.getId());
                user.setRoles(role);
                return user;
            }
        }
        throw new UsernameNotFoundException("username or password wrong");
    }
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
