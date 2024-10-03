package com.example.demo.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.entity.DeviceSchema;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface DeviceSchemaDao extends BaseMapper<DeviceSchema> {
    List<DeviceSchema> getDeviceSchema(@Param("deviceSchema") DeviceSchema deviceSchema);
    Integer removeById(@Param("id") Integer id);
}
