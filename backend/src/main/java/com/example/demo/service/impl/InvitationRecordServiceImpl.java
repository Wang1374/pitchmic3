package com.example.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.dao.InvitationRecordDao;
import com.example.demo.entity.InvitationRecord;
import com.example.demo.entity.User;
import com.example.demo.service.InvitationRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/13 22:18:46
 * @Version: V1.0
 */
@Service
public class InvitationRecordServiceImpl extends ServiceImpl<InvitationRecordDao,InvitationRecord> implements InvitationRecordService {
    @Autowired
    InvitationRecordDao invitationRecordDao;

    @Override
    public InvitationRecord createInvite(InvitationRecord invitationRecord) {
        invitationRecord.setInvitationCode(UUID.randomUUID().toString().toUpperCase());
        invitationRecord.setCreateDate(new Date(System.currentTimeMillis()));
        invitationRecord.setUpdateDate(new Date(System.currentTimeMillis()));
        if(save(invitationRecord)){
            return invitationRecord;
        }
        return null;
    }

    @Override
    public List<InvitationRecord> getInvitationRecord(InvitationRecord invitationRecord) {
        return invitationRecordDao.getByInvitationRecord(invitationRecord);
    }

    @Override
    public List<InvitationRecord> getInvitationRecordByUserId(Integer id) {
        return super.getBaseMapper().getInvitationRecordByUserId(id);
    }

    @Override
    public List<InvitationRecord> getByInvitationRecord(InvitationRecord invitationRecord) {
        return super.getBaseMapper().getByInvitationRecord(invitationRecord);
    }
}
