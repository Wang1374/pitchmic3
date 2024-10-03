package com.example.demo.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.entity.InvitationRecord;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface InvitationRecordDao extends BaseMapper<InvitationRecord> {
    Integer createInviteInfo(@Param("invitationRecord")InvitationRecord invitationRecord);
    List<InvitationRecord> getByInvitationRecord(@Param("invitationRecord") InvitationRecord invitationRecord);
    Integer updateInviteUserIdByCode(@Param("code") String code, @Param("userId") Integer userId);
    List<InvitationRecord> getInvitationRecordByUserId(@Param("id") Integer id);

}
