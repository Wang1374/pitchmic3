package com.example.demo.controller;

import com.example.demo.entity.FilePath;
import com.example.demo.entity.LiveRecords;
import com.example.demo.entity.Team;
import com.example.demo.service.FilePathService;
import com.example.demo.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2024/02/20 22:20:44
 * @Version: V1.0
 */
@RestController
@RequestMapping("/liveFile")
public class LiveFileController extends CommonalityController{
    @Autowired
    private FilePathService filePathService;

    @RequestMapping("/liveUpload")
    public ResultUtils liveUploadFile(FilePath filePath, MultipartFile file){
        return filePathService.liveUpload(filePath, file) ? ResultUtils.success("Successfully Upload!") : ResultUtils.error("Failed to upload!");
    }
    @RequestMapping("/getUploadFile")
    public ResultUtils getUploadFile(FilePath filePath){
        return ResultUtils.success(filePathService.getUploadFile(filePath));
    }
}



















