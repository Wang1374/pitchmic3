package com.example.demo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.demo.entity.LiveLanguageRecords;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface LiveLanguageRecordsService extends IService<LiveLanguageRecords> {
    String createAudioFile(LiveLanguageRecords languageRecords, MultipartFile file);
    List<LiveLanguageRecords> getLiveLanguageRecordsByAudioUserId(Integer id);
    List<LiveLanguageRecords> getLiveLanguageRecordsByAudioUserIdAndLiveRecordsId(Integer audioUserid, Integer liveRecordsId);
}
