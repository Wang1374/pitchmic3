package com.example.demo.controller;

import com.example.demo.entity.LiveStream;
import com.example.demo.service.LiveStreamService;
import com.example.demo.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/05 23:39:00
 * @Version: V1.0
 */
@Controller("/liveStream")
public class LiveStreamController {
    @Autowired
    LiveStreamService liveStreamService;

    @GetMapping
    public ResultUtils getLiveStream(LiveStream liveStream){
        return ResultUtils.success(liveStreamService.getLiveStream(liveStream));
    }

    @PostMapping
    public ResultUtils createLiveStream(LiveStream liveStream){
        return ResultUtils.success(liveStreamService.createLiveStream(liveStream));
    }

}
