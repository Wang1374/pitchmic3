package com.example.demo.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.entity.LiveLanguageRecords;
import com.example.demo.entity.LiveRecords;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface LiveLanguageRecordsDao extends BaseMapper<LiveLanguageRecords> {
    List<LiveLanguageRecords> selectByLiveRecordsId(@Param("id") Integer liveRecordsId);
    List<LiveLanguageRecords> selectByAudioUserId(@Param("id") Integer audioUserId);
    List<LiveLanguageRecords> selectByAudioUserIdAndLiveRecordsId(@Param("audioUserId") Integer audioUserId, @Param("liveRecordsId") Integer liveRecordsId);
    Integer updateLiveLanguageRecords(@Param("languageRecords") LiveLanguageRecords languageRecords);
}
























