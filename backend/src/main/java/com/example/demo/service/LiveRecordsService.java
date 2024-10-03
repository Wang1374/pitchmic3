package com.example.demo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.demo.entity.LiveRecords;
import com.example.demo.entity.User;

import java.util.List;

public interface LiveRecordsService extends IService<LiveRecords> {
    List<LiveRecords> getLiveRecords(LiveRecords liveRecords);
    LiveRecords getLiveRecordsById(Integer id);
    String createLiveRegister(LiveRecords liveRecords, User user);
    String removeCommentary(Integer id);
}
