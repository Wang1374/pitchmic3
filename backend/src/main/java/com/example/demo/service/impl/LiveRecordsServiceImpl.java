package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.dao.LiveLanguageRecordsDao;
import com.example.demo.dao.LiveRecordsDao;
import com.example.demo.entity.Game;
import com.example.demo.entity.LiveLanguageRecords;
import com.example.demo.entity.LiveRecords;
import com.example.demo.entity.User;
import com.example.demo.exception.ServiceException;
import com.example.demo.service.GameService;
import com.example.demo.service.LiveLanguageRecordsService;
import com.example.demo.service.LiveRecordsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/20 22:06:08
 * @Version: V1.0
 */
@Service
public class LiveRecordsServiceImpl extends ServiceImpl<LiveRecordsDao, LiveRecords> implements LiveRecordsService {
    @Autowired
    private LiveLanguageRecordsService liveLanguageRecordsService;

    @Autowired
    private GameService gameService;

    @Value("${webrtc.url}")
    private String webrtc;


    @Override
    public List<LiveRecords> getLiveRecords(LiveRecords liveRecords) {
        return super.getBaseMapper().getLiveRecords(liveRecords);
    }

    @Override
    public LiveRecords getLiveRecordsById(Integer id) {
        return super.getBaseMapper().getLiveRecordsById(id);
    }

    @Override
    @Transactional(rollbackFor = {Exception.class, ServiceException.class})
    public String createLiveRegister(LiveRecords liveRecords, User user){
        List<LiveLanguageRecords> languageRecords = liveRecords.getLanguageRecords();
        liveRecords.setLanguageRecords(null);
        QueryWrapper<LiveRecords> queryWrapper = Wrappers.query();
        queryWrapper
                .eq("team_id",liveRecords.getTeamId())
                .eq("target_team_id",liveRecords.getTargetTeamId())
                .apply("date_format(register_date,'%Y-%m-%d') = date_format({0},'%Y-%m-%d')",liveRecords.getRegisterDate());

        LiveRecords checkLiveRecords = super.getOne(queryWrapper);
        if(checkLiveRecords != null){
            languageRecords.forEach(liveLanguageRecords -> {
                liveLanguageRecords.setLiveRecordsId(checkLiveRecords.getId());
                liveLanguageRecords.setRtmpUrl(webrtc);
                liveLanguageRecords.setAudioUserId(user.getId());
                liveLanguageRecords.setLiveStartKey(UUID.randomUUID().toString().toUpperCase());
                if(!liveLanguageRecordsService.save(liveLanguageRecords)){
                    throw new ServiceException("Failed!");
                }
            });
            return "Saved!";
        }else{
            Game game = new Game();
            game.setStartTime(liveRecords.getRegisterDate());
            game.setTeamId(liveRecords.getTeamId());
            game.setTargetTeamId(liveRecords.getTargetTeamId());
            if(gameService.save(game)){
                liveRecords.setGameId(game.getId());
                liveRecords.setCreateDate(new Date(System.currentTimeMillis()));
                liveRecords.setUpdateDate(new Date(System.currentTimeMillis()));
                liveRecords.setCreateUser(user.getId());
                liveRecords.setUpdateUser(user.getId());
                liveRecords.setStatus("0");
                if(super.save(liveRecords)){
                    languageRecords.forEach(liveLanguageRecords -> {
                        liveLanguageRecords.setLiveRecordsId(liveRecords.getId());
                        liveLanguageRecords.setRtmpUrl(webrtc);
                        liveLanguageRecords.setAudioUserId(user.getId());
                        liveLanguageRecords.setLiveStartKey(UUID.randomUUID().toString().toUpperCase());
                        if(!liveLanguageRecordsService.save(liveLanguageRecords)){
                            throw new ServiceException("Failed!");
                        }
                    });
                    return "Saved!";
                }
            }
        }
        throw new ServiceException("Fail to save!");
    }

    @Override
    @Transactional(rollbackFor = {Exception.class, ServiceException.class})
    public String removeCommentary(Integer id) {
        LiveLanguageRecords liveLanguageRecords = liveLanguageRecordsService.getById(id);
        if(liveLanguageRecords != null){
            LiveRecords liveRecords = baseMapper.getLiveRecordsById(liveLanguageRecords.getLiveRecordsId());
            if(liveRecords.getLanguageRecords().size() <= 1){
                super.removeById(liveRecords.getId());
            }
            liveLanguageRecordsService.removeById(liveLanguageRecords.getId());
            return "Delete Completed!";
        }
        throw new ServiceException("Delete Error!");
    }
}


















