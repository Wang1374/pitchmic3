package com.example.demo.entity;

import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * @ClassName Competition
 * @Author kael
 * @Date 2024/4/24 20:45
 **/
@Data
public class Competition {
    private Long id;

    /*选手A-ID*/
    private String playerAId;

    /*选手B-ID*/
    private String playerBId;

    /*选手A名称*/
    private String playerAName;

    /*选手B名称*/
    private String playerBName;

    /*选手A分数*/
    private Integer playerAScore;

    /*选手B分数*/
    private Integer playerBScore;

    /*开始时间*/
    private Date startTime;

    /*比赛是否结束*/
    private Integer isEnd;

    private List<TextLiveHistory> history;
}
