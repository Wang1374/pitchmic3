package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.dao.FilePathDao;
import com.example.demo.entity.FilePath;
import com.example.demo.exception.ServiceException;
import com.example.demo.service.FilePathService;
import com.example.demo.utils.FileUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Objects;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/11/03 22:22:22
 * @Version: V1.0
 */
@Service
public class FilePathServiceImpl extends ServiceImpl<FilePathDao, FilePath> implements FilePathService {
    //search file by condition
    private Wrapper<FilePath> buildFilePath(FilePath filePath){
        QueryWrapper<FilePath> query = Wrappers.query();
        if(filePath != null) { //avoid get all the file
            query.and(filePathQueryWrapper -> {
                if(filePath.getFileName() != null && !Objects.equals(filePath.getFileName(), "")){
                    filePathQueryWrapper.like("file_name", filePath.getFileName());
                }
                if(filePath.getType() != null && !Objects.equals(filePath.getType(), "")){
                    filePathQueryWrapper.eq("type", filePath.getType());
                }
                if(filePath.getStartDate() != null){
                    filePathQueryWrapper.apply("date_format(create_date, '%Y-%M-%D') >= date_format({0}, '%Y-%M-%D')", filePath.getStartDate());
                }
                if(filePath.getEndDate() != null){
                    filePathQueryWrapper.apply("date_format(create_date, '%Y-%M-%D') <= date_format({0}, '%Y-%M-%D')", filePath.getEndDate());
                }
            });
        }
        return query;
    }

    @Override
    @Transactional(rollbackFor = {Exception.class, ServiceException.class})
    public boolean liveUpload(FilePath filePath, MultipartFile file) {
        FilePath fileResult = null;
        try{
            fileResult = FileUtils.createFile(file, filePath.getFileName() + "." + filePath.getSuffix());
        }catch (Exception e){
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            throw new ServiceException("Upload fail!");
        }
        fileResult.setType(filePath.getType());
        fileResult.setSuffix(filePath.getSuffix());
        return super.save(fileResult);
    }

    @Override
    public List<FilePath> getUploadFile(FilePath filePath) {
        return super.list(buildFilePath(filePath));
    }
}

















