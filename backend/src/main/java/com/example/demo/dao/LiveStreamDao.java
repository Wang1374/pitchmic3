package com.example.demo.dao;

import com.example.demo.entity.LiveStream;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.repository.query.Param;

import java.util.List;

@Mapper
public interface LiveStreamDao {
    LiveStream createLiveStream(@Param("liveStream") LiveStream liveStream);
    List<LiveStream> getLiveStream(@Param("liveStream") LiveStream liveStream);
}
