package com.example.demo.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.entity.Language;
import com.example.demo.entity.LiveRecords;
import com.example.demo.entity.LiveRegister;
import com.fasterxml.jackson.databind.ser.Serializers;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface LanguageDao extends BaseMapper<Language> {
}
