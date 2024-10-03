package com.example.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.dao.EmailDao;
import com.example.demo.dao.FilePathDao;
import com.example.demo.entity.EmailConfig;
import com.example.demo.entity.FilePath;
import com.example.demo.service.EmailService;
import com.example.demo.service.FilePathService;
import org.springframework.stereotype.Service;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/11/18 23:21:53
 * @Version: V1.0
 */
@Service
public class EmailServiceImpl extends ServiceImpl<EmailDao, EmailConfig> implements EmailService {
}
