package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.example.demo.dao.InvitationRecordDao;
import com.example.demo.dao.RoleDao;
import com.example.demo.dao.UserAndRoleDao;
import com.example.demo.dao.UserDao;
import com.example.demo.entity.*;
import com.example.demo.exception.ServiceException;
import com.example.demo.service.*;
import com.example.demo.utils.EmailUtils;
import com.example.demo.utils.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;

    @Autowired
    InvitationRecordService invitationRecordService;

    @Autowired
    RoleDao roleDao;

    @Autowired
    UserAndRoleService userAndRoleService;

    @Autowired
    FilePathService filePathService;

    @Autowired
    EmailService emailService;


    @Override
    public User login(String username){
        return userDao.login(username);
    }

    @Override
    @Transactional(rollbackFor =  {Exception.class, ServiceException.class})
    public User register(User user) {
        InvitationRecord invitationRecord = new InvitationRecord();
        invitationRecord.setInvitationCode(user.getCode());
        List<InvitationRecord> invitationRecordList = invitationRecordService.getByInvitationRecord(invitationRecord);
        if(invitationRecordList == null || invitationRecordList.size() == 0){
            throw new ServiceException("invitation code not found");
        }
        invitationRecord = invitationRecordList.get(0);

        //verify this user do not exist
        List<User> existUser = userDao.getUserInfos(user);
        if(existUser != null && existUser.size() > 0){
            return null;
        }

        user.setCreateDate(new Date(System.currentTimeMillis()));
        user.setUpdateDate(new Date(System.currentTimeMillis()));
        //user BCrypt encrypt password
        user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
        userDao.register(user);

        existUser = userDao.getUserInfos(user);
        invitationRecord.setInviteeId(existUser.get(0).getId());
        invitationRecord.setStatus("1");
        invitationRecordService.updateById(invitationRecord);
        UserAndRole userAndRole = new UserAndRole();
        Role role = roleDao.getRoleById(invitationRecord.getInviteeRoleId());
        if(role != null ){
            userAndRole.setUserId(existUser.get(0).getId());
            userAndRole.setRoleId(role.getId());
        }else{
            return null;
        }
        userAndRoleService.save(userAndRole);
        return existUser.get(0);
    }

    @Override
    public List<User> getUserInfos(User user) {
        return userDao.getUserInfos(user);
    }

    @Override
    @Transactional(rollbackFor = { Exception.class, ServiceException.class})
    public User updateUser(User user, MultipartFile file) {
        if(file != null){
            FilePath filePath = null;
            try {
                filePath = FileUtils.createFile(file);
            }catch (IOException e){
                throw new ServiceException("Fail to update the profile picture");
            }
            if(filePath != null){
                if(filePathService.save(filePath)){
                    if(user != null){
                        user.setProfilePicture(filePath.getId());
                        userDao.updateUser(user);
                        return user;
                    }
                }
            }
        }
        user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
        return userDao.updateUser(user) > 0 ? user : null;
    }

    @Override
    public List<User> getUserList() {
        return userDao.getUserList();
    }

    @Override
    public String forgetPassword(String emailOrPhone) {
        User user = userDao.checkEmailAndPhone(emailOrPhone);
        if(user == null){
            throw new ServiceException("email/phone number does not exist");
        };
        QueryWrapper<EmailConfig> query = Wrappers.query();
        query.and(Consumer -> {
            Consumer.eq("status", "1");
        });
        EmailConfig email = emailService.getOne(query);
        String tempPassword = UUID.randomUUID().toString().toUpperCase();
        user.setPassword(new BCryptPasswordEncoder().encode(tempPassword));
        updateUser(user, null);
        EmailUtils.build(email).send("Temporary password", tempPassword, user.getEmail());
        return "Temporary Password has been sent to your email!";
    }

    @Override
    public List<User> getNotCurrentUser(Integer id) {
        return userDao.getNotCurrentUser(id);
    }

    @Override
    public Boolean removeUser(Integer id) {
        return userDao.removeUser(id) > 0;
    }
}