package com.example.demo.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.entity.LiveRegister;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.security.core.parameters.P;

import java.util.List;

@Mapper
public interface LiveRegisterDao extends BaseMapper<LiveRegister> {
    List<LiveRegister> getLiveRegister(@Param("userId") Integer userId);
    LiveRegister getLiveRegisterById(@Param("id")Integer id);
}
