package com.example.demo.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.demo.entity.CompScore;
import com.example.demo.entity.Competition;
import com.example.demo.entity.TextLiveHistory;
import com.example.demo.utils.ResultUtils;
import com.example.demo.websocket.WebsocketService;
import com.example.demo.websocket.req.MsgData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName AdminComoetitionController
 * @Author kael
 * @Date 2024/4/24 21:19
 **/
@RestController("/admin")
public class AdminCompetitionController {

    @Autowired
    WebsocketService websocketService;

    @Autowired
    RedisTemplate redisTemplate;

    @PostMapping("/add")
    public ResultUtils addCompetition (@RequestBody Competition competition){
        //新增赛事

        //新增 放入redis

        return null;
    }

    @PostMapping("/addText")
    public ResultUtils sendTextLive(@RequestBody TextLiveHistory textLiveHistory){
        //TODO 更新数据库

        // 更新缓存
        // redis list
        redisTemplate.opsForList().rightPush("COMP:LIST:" + textLiveHistory.getCompetitionId(),JSONObject.toJSONString(textLiveHistory));

        MsgData msgData = new MsgData().setMsgType(2).setData(JSONObject.toJSONString(textLiveHistory));
        websocketService.push2User(msgData);

        return ResultUtils.success();
    }

    /**
     * 比赛分数增加
     * @param compScore
     * @return
     */
    @PostMapping("/addScore")
    public ResultUtils addScore(@RequestBody CompScore compScore){
        //TODO 更新数据库

        // 更新缓存 string          COMP:SCORE: compid : 选手id
        Long increment = redisTemplate.opsForValue().increment("COMP:SCORE:" + compScore.getCompId() + ":" + compScore.getPlayerId(),compScore.getScore());

        MsgData msgData = new MsgData().setMsgType(1).setData(JSONObject.toJSONString(compScore));
        websocketService.push2User(msgData);

        return ResultUtils.success();
    }
}
