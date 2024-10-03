package com.example.demo.controller;

import com.example.demo.dao.LanguageDao;
import com.example.demo.service.LanguageService;
import com.example.demo.service.LiveRecordsService;
import com.example.demo.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/30 23:27:10
 * @Version: V1.0
 */
@RestController
@RequestMapping("/language")
public class LanguageController {
    @Autowired
    LanguageService languageService;

    @GetMapping("/getLanguage")
    public ResultUtils getLanguage(){
        return ResultUtils.success(languageService.list());
    }
}
