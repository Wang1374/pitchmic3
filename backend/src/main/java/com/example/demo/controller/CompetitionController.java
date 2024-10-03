package com.example.demo.controller;

import com.example.demo.entity.Competition;
import com.example.demo.entity.TextLiveHistory;
import com.example.demo.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;

/**
 * c端接口
 * @ClassName CompetitionController
 * @Author kael
 * @Date 2024/4/24 20:54
 **/
@RestController
public class CompetitionController {

    @Autowired
    RedisTemplate redisTemplate;

    /**
     * 获取当前赛况
     * @return
     */
    @GetMapping("/getCompetition")
    public ResultUtils getCompetition(Long id){//分页
        //0、赛前提前预热 Competition 信息(将Competition信息存入到redis中) string
        Competition competition = (Competition)redisTemplate.opsForValue().get("COMP:INFO:" + id);
        //未开始
        if(competition.getStartTime().getTime()>new Date().getTime()){
            return ResultUtils.success(competition);
        }
        if(competition.getIsEnd()==0){
            //1、从redis缓存中取 Competition 信息，判断赛事开始时间 和 判断赛事是否结束

            //2.1、赛事未开始: 直接返回 Competition 信息比分为 0:0 不拼接 TextLiveHistory 信息

            //2.2、赛事已经开始: 从redis中取正在 比分信息 和 历史文字直播信息
            //key：value
            Integer pAScore = (Integer)redisTemplate.opsForValue().get("COMP:SCORE:" +id +":" +competition.getPlayerAId());
            Integer pBScore = (Integer)redisTemplate.opsForValue().get("COMP:SCORE:"+id +":" + competition.getPlayerAId());
            competition.setPlayerAScore(pAScore);
            competition.setPlayerBScore(pBScore);
            List<TextLiveHistory> range = (List<TextLiveHistory>) redisTemplate.opsForList().range("COMP:LIST:" + id, 0, 100);
            competition.setHistory(range);
            return ResultUtils.success(competition);
        } else {
            //2.3、赛事结束后将 Competition 信息进行封装 存入信息
            // json
            //todo 缓存没有 就去数据取
            Integer pAScore = (Integer)redisTemplate.opsForValue().get("COMP:SCORE:" +id +":" +competition.getPlayerAId());
            Integer pBScore = (Integer)redisTemplate.opsForValue().get("COMP:SCORE:"+id +":" + competition.getPlayerAId());
            competition.setPlayerAScore(pAScore);
            competition.setPlayerBScore(pBScore);
            List<TextLiveHistory> range = (List<TextLiveHistory>) redisTemplate.opsForList().range("COMP:LIST:" + id, 0, 100);
            competition.setHistory(range);
            return ResultUtils.success(competition);
        }





    }





}
