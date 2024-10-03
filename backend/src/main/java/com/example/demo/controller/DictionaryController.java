package com.example.demo.controller;

import com.example.demo.service.DictionaryService;
import com.example.demo.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2024/02/25 21:53:09
 * @Version: V1.0
 */
@RestController
@RequestMapping("/dictionary")
public class DictionaryController extends CommonalityController{
    @Autowired
    private DictionaryService dictionaryService;

    @RequestMapping("/type")
    public ResultUtils getDictionaryType(@RequestParam("type") String type){
        return ResultUtils.success(dictionaryService.getDictionaryByType(type));
    }
    @RequestMapping("/group")
    public ResultUtils getDictionaryGroup(@RequestParam("group") String group){
        return ResultUtils.success(dictionaryService.getDictionaryByGroup(group));
    }
}
