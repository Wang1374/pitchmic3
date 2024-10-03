package com.example.demo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.demo.entity.InvitationRecord;
import com.example.demo.entity.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface InvitationRecordService extends IService<InvitationRecord> {
    InvitationRecord createInvite(InvitationRecord invitationRecord);
    List<InvitationRecord> getInvitationRecord(InvitationRecord invitationRecord);
    List<InvitationRecord> getInvitationRecordByUserId(Integer id);
    List<InvitationRecord> getByInvitationRecord(InvitationRecord invitationRecord);
}
