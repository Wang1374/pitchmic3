package com.example.demo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.demo.entity.LiveRegister;
import com.example.demo.entity.User;

import java.util.List;

public interface LiveRegisterService extends IService<LiveRegister> {
//    LiveRegister createLiveRegister(LiveRegister liveRegister, User user);
    List<LiveRegister> getLiveRegister(Integer userId);
    LiveRegister createCommentaryRegister(LiveRegister liveRegister, User user);
    String removeCommentary(Integer id);
}
