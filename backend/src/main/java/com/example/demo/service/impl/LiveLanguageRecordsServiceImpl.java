package com.example.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.dao.LiveLanguageRecordsDao;
import com.example.demo.entity.FilePath;
import com.example.demo.entity.LiveLanguageRecords;
import com.example.demo.entity.LiveRecords;
import com.example.demo.entity.LiveRegister;
import com.example.demo.exception.ServiceException;
import com.example.demo.service.FilePathService;
import com.example.demo.service.LiveLanguageRecordsService;
import com.example.demo.service.LiveRecordsService;
import com.example.demo.utils.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/12/01 21:03:55
 * @Version: V1.0
 */
@Service
public class LiveLanguageRecordsServiceImpl extends ServiceImpl<LiveLanguageRecordsDao, LiveLanguageRecords> implements LiveLanguageRecordsService {
    @Autowired
    FilePathService filePathService;

    @Override
    @Transactional(rollbackFor = {Exception.class, ServiceException.class})
    public String createAudioFile(LiveLanguageRecords languageRecords, MultipartFile file) {
        FilePath filePath = null;
        try{
            filePath = FileUtils.createFile(file);
        } catch(Exception e){
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            throw new ServiceException("Fail to add this audio!");
        }
        if(filePath != null){
            if(filePathService.save(filePath)){
                languageRecords.setFileId(filePath.getId());
                if(languageRecords.getId() != null){
                    getBaseMapper().updateLiveLanguageRecords(languageRecords);
                }else {
                    save(languageRecords);
                }
                return "Saved!";
            }
        }
        return null;
    }

    @Override
    public List<LiveLanguageRecords> getLiveLanguageRecordsByAudioUserId(Integer id) {
        return super.getBaseMapper().selectByAudioUserId(id);
    }

    @Override
    public List<LiveLanguageRecords> getLiveLanguageRecordsByAudioUserIdAndLiveRecordsId(Integer audioUserid, Integer liveRecordsId) {
        return super.getBaseMapper().selectByAudioUserIdAndLiveRecordsId(audioUserid,liveRecordsId);
    }
}
















