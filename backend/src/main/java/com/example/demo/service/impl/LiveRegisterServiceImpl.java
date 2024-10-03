package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.dao.GameDao;
import com.example.demo.dao.LiveRecordsDao;
import com.example.demo.dao.LiveRegisterDao;
import com.example.demo.dao.TeamDao;
import com.example.demo.entity.*;
import com.example.demo.exception.ServiceException;
import com.example.demo.service.LiveRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.imageio.spi.RegisterableService;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.function.Consumer;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/20 00:06:03
 * @Version: V1.0
 */
@Service
public class LiveRegisterServiceImpl extends ServiceImpl<LiveRegisterDao, LiveRegister> implements LiveRegisterService {
    @Autowired
    TeamDao teamDao;

    @Autowired
    LiveRecordsDao liveRecordsDao;

    @Autowired
    LiveRegisterDao liveRegisterDao;

    @Autowired
    GameDao gameDao;

    @Value("${rtmp.url}")
    private String rtmpUrl;
    @Value("${webrtc.url}")
    private String webrtcUrl;
    public Wrapper<LiveRegister> getQueryWrapper(LiveRegister liveRegister){
        QueryWrapper<LiveRegister> query = Wrappers.query();
        if(liveRegister == null){
            return query;
        }
        query.and(Consumer -> {
            if(liveRegister.getAdminId() != null) {
                Consumer.eq("admin_id", liveRegister.getAdminId());
            }
            if(liveRegister.getRtmpUrl() !=  null){
                Consumer.eq("rtmp_url", liveRegister.getRtmpUrl());
            }
            if(liveRegister.getStartDate() != null){
                Consumer.apply("date_format(start_date, 'YYYY-MM-DD') = date_format({0}, 'YYYY-MM-DD')", liveRegister.getStartDate());
            }
            if(liveRegister.getLiveStartKey() != null){
                Consumer.eq("live_start_key", liveRegister.getLiveStartKey());
            }
        });
        return query;
    }
//
//    @Override
//    @Transactional(rollbackFor = {Exception.class, ServiceException.class})
//    public LiveRegister createLiveRegister(LiveRegister liveRegister, User currentUser) {
//        //generate random key
//        liveRegister.setLiveStartKey(UUID.randomUUID().toString().toUpperCase(Locale.ROOT));
//        //get current team
//        User user = new User();
//        user.setId(currentUser.getId());
////        Team team = teamDao.getTeamInfo(user);
//        liveRegister.setCreateDate(new Date(System.currentTimeMillis()));
//        liveRegister.setCreateUser(currentUser.getId());
//        liveRegister.setUpdateDate(new Date(System.currentTimeMillis()));
//        liveRegister.setUpdateUser(currentUser.getId());
//        Game game = new Game();
//        game.setStartTime(liveRegister.getStartDate());
//        game.setTeamId(team.getId());
//        if(team == null){
//            throw new ServiceException("current user do not have authority.");
//        }
//        Team targetTeam = teamDao.selectById(liveRegister.getLiveRecords().getTargetTeamId());
//
//        if(targetTeam == null){
//            throw new ServiceException("target team do not exist");
//        }
//        game.setTargetTeamId(targetTeam.getId());
//
////        LiveRecords records = liveRecordsDao.isRegister(liveRegister);
//        //prevent the same team to be booked twice in a day
////        if(records != null){
////            throw new ServiceException("target team has already been booked");
////        }
//        liveRegister.setRtmpUrl(rtmpUrl);
//        LiveRecords records = liveRegister.getLiveRecords();
//        //remove the LiveRecords's value pass from the front end
//        liveRegister.setLiveRecords(null);
//        if(super.save(liveRegister)){
//            //after save liveRegister carry id, get that entity again
//            liveRegister = super.getOne(getQueryWrapper(liveRegister));
//            if(liveRegister != null){
//                //Team and Target Team are entity, have to be null before insert
//                records.setTeam(null);
//                records.setTargetTeam(null);
//                records.setLiveId(liveRegister.getId());
//                records.setGameId(game.getId());
//                records.setRegisterDate(liveRegister.getStartDate());
//                records.setCreateDate(new Date(System.currentTimeMillis()));
//                records.setUpdateDate(new Date(System.currentTimeMillis()));
//                records.setCreateUser(currentUser.getId());
//                records.setUpdateUser(currentUser.getId());
//                if(liveRecordsDao.insert(records) > 0){
//                    records = liveRecordsDao.getLiveRecordsByLiveId(records.getLiveId());
//                    if(records != null){
//                        liveRegister.setLiveRecords(records);
//                        return liveRegister;
//                    }
//                }
//            }
//        }
//        throw new ServiceException("register fail");
//    }

//    //get all the live register records for the current user
    @Override
    public List<LiveRegister> getLiveRegister(Integer userId) {
        return liveRegisterDao.getLiveRegister(userId);
    }


    @Override
    @Transactional(rollbackFor = {Exception.class, ServiceException.class})
    public LiveRegister createCommentaryRegister(LiveRegister liveRegister, User currentUser) {
        //generate random key
        liveRegister.setLiveStartKey(UUID.randomUUID().toString().toUpperCase(Locale.ROOT));
        //set value for live register
        liveRegister.setCreateDate(new Date(System.currentTimeMillis()));
        liveRegister.setCreateUser(currentUser.getId());
        liveRegister.setUpdateDate(new Date(System.currentTimeMillis()));
        liveRegister.setUpdateUser(currentUser.getId());
        liveRegister.setRtmpUrl(webrtcUrl);
        liveRegister.setStatus("2");
        //set value for game and team
        Game game = new Game();
        game.setStartTime(liveRegister.getStartDate());
        Team team = teamDao.selectById(liveRegister.getLiveRecords().getTeamId());
        Team targetTeam = teamDao.selectById(liveRegister.getLiveRecords().getTargetTeamId());
        game.setTeamId(team.getId());
        game.setTargetTeamId(targetTeam.getId());

        LiveRecords records = liveRegister.getLiveRecords();
        //remove the LiveRecords's value pass from the front end
        liveRegister.setLiveRecords(null);
        if(super.save(liveRegister)){
            //after save liveRegister carry id, get that entity again
            liveRegister = super.getOne(getQueryWrapper(liveRegister));
            if(liveRegister != null){
                //Team and Target Team are entity, have to be null before insert
                records.setTeam(null);
                records.setTargetTeam(null);
                records.setLiveId(liveRegister.getId());
                records.setGameId(game.getId());
                records.setCommentatorId(currentUser.getId());
//                records.setLanguageId(records.getLanguageId());
                records.setRegisterDate(liveRegister.getStartDate());
                records.setCreateDate(new Date(System.currentTimeMillis()));
                records.setUpdateDate(new Date(System.currentTimeMillis()));
                records.setCreateUser(currentUser.getId());
                records.setUpdateUser(currentUser.getId());
                if(liveRecordsDao.insert(records) > 0){
                    records = liveRecordsDao.getLiveRecordsByLiveId(records.getLiveId());
                    if(records != null){
                        liveRegister.setLiveRecords(records);
                        return liveRegister;
                    }
                }
            }
        }
        throw new ServiceException("register fail");
    }

    @Override
    @Transactional(rollbackFor = {Exception.class, ServiceException.class})
    public String removeCommentary(Integer id) {
        LiveRegister liveRegister = baseMapper.getLiveRegisterById(id);
        if(liveRegister != null){
            if(liveRegister.getLiveRecords() != null){
                if(liveRegister.getLiveRecords().getGame() != null){
                    gameDao.deleteById(liveRegister.getLiveRecords().getGameId());
                }
                liveRecordsDao.deleteById(liveRegister.getLiveRecords().getId());
            }
            super.removeById(liveRegister.getId());
            return "Delete Completed!";
        }
        throw new ServiceException("Delete Error!");
    }
}








































