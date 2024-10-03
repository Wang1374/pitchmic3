package com.example.demo.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.entity.LiveRecords;
import com.example.demo.entity.LiveRegister;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface LiveRecordsDao extends BaseMapper<LiveRecords> {
    LiveRecords isRegister(@Param("register")LiveRegister liveRegister);
    LiveRecords getLiveRecordsByLiveId(@Param("liveId") Integer liveId);
    List<LiveRecords> getLiveRecords(@Param("liveRecords") LiveRecords liveRecords);
    LiveRecords getLiveRecordsById(@Param("id") Integer id);
    LiveRecords getLiveRecordsByIdWithoutLanguage(@Param("id") Integer id);
}
