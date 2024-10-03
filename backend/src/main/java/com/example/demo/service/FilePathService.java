package com.example.demo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.demo.entity.FilePath;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface FilePathService extends IService<FilePath> {
    public boolean liveUpload(FilePath filePath, MultipartFile file);
    List<FilePath> getUploadFile(FilePath filePath);
}
