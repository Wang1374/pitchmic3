package com.example.demo.controller;

import com.example.demo.entity.LiveLanguageRecords;
import com.example.demo.entity.LiveRecords;
import com.example.demo.service.LiveLanguageRecordsService;
import com.example.demo.service.LiveRecordsService;
import com.example.demo.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.xml.transform.Result;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/20 22:53:44
 * @Version: V1.0
 */
@RestController
@RequestMapping("/liveRecords")
public class LiveRecordsController extends CommonalityController {
    @Autowired
    LiveRecordsService liveRecordsService;

    @Autowired
    LiveLanguageRecordsService liveLanguageRecordsService;

    @PostMapping("/getLiveRecords")
    public ResultUtils getLiveRecords(@RequestBody LiveRecords liveRecords){
        return ResultUtils.success(liveRecordsService.getLiveRecords(liveRecords));
    }
    @PostMapping("/createLiveRecords")
    public ResultUtils createLiveRecords(){
        return ResultUtils.success();
    }

    @GetMapping("/getLiveRecordsById")
    public ResultUtils getLiveRecordsById(Integer id){
        return ResultUtils.success(liveRecordsService.getLiveRecordsById(id));
    }

    @PostMapping("/createAudioFile")
    public ResultUtils createAudioFile(LiveLanguageRecords languageRecords, MultipartFile file){
        return ResultUtils.success(liveLanguageRecordsService.createAudioFile(languageRecords, file));
    }
    @PostMapping("/createLiveRegister")
    public ResultUtils createLiveRegister(@RequestBody LiveRecords liveRecords){
        return ResultUtils.success(liveRecordsService.createLiveRegister(liveRecords, getUserInfo()));
    }

    @GetMapping("/getLiveLanguageRecords")
    public ResultUtils getLiveLanguageRecords(){
        return ResultUtils.success(liveLanguageRecordsService.getLiveLanguageRecordsByAudioUserId(getUserInfo().getId()));
    }

    @GetMapping("/getLiveLanguageRecordsByLiveRecordsId")
    public ResultUtils getLiveLanguageRecordsByLiveRecordsId(Integer liveRecordsId){
        return ResultUtils.success(liveLanguageRecordsService.getLiveLanguageRecordsByAudioUserIdAndLiveRecordsId(getUserInfo().getId(),liveRecordsId));
    }

    @GetMapping("/removeCommentary")
    public ResultUtils removeCommentary(Integer id){
        return ResultUtils.success(liveRecordsService.removeCommentary(id));
    }
}













