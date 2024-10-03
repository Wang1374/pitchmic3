package com.example.demo.controller;
import com.example.demo.entity.LiveRegister;
import com.example.demo.service.LiveRegisterService;
import com.example.demo.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/20 22:19:30
 * @Version: V1.0
 */
@RestController
@RequestMapping("/liveRegister")
public class LiveRegisterController extends CommonalityController{
    @Autowired
    LiveRegisterService liveRegisterService;

//    @PostMapping("/createLiveRegister")
//    public ResultUtils createLiveRegister(@RequestBody LiveRegister liveRegister){
//        liveRegister = liveRegisterService.createLiveRegister(liveRegister, getUserInfo());
//        return ResultUtils.success(liveRegister);
//    }
//    //get all the live register from the current user
    @GetMapping("/getLiveRegister")
    public ResultUtils getLiveRegister(){
        return ResultUtils.success(liveRegisterService.getLiveRegister(getUserInfo().getId()));
    }
    @PostMapping("/createCommentaryRegister")
    public ResultUtils createCommentaryRegister(@RequestBody LiveRegister liveRegister){
        liveRegister = liveRegisterService.createCommentaryRegister(liveRegister, getUserInfo());
        return ResultUtils.success(liveRegister);
    }
    @GetMapping("/removeCommentary")
    public ResultUtils removeCommentary(Integer id){
        return ResultUtils.success(liveRegisterService.removeCommentary(id));
    }
}





















