package com.example.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.dao.LanguageDao;
import com.example.demo.dao.LiveRecordsDao;
import com.example.demo.entity.Language;
import com.example.demo.entity.LiveRecords;
import com.example.demo.entity.LiveRegister;
import com.example.demo.service.LanguageService;
import com.example.demo.service.LiveRecordsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/30 23:29:25
 * @Version: V1.0
 */
@Service
public class LanguageServiceImpl extends ServiceImpl<LanguageDao, Language> implements LanguageService {
}

