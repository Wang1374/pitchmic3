package com.example.demo.entity;

import lombok.Data;

import java.util.Date;

/**
 * @ClassName TextLive
 * @Author kael
 * @Date 2024/4/24 20:40
 **/
@Data
public class TextLiveHistory {

    private Long id;

    /*赛况文本*/
    private String text;

    /*赛况发生点*/
    private String time;

    /*文本推送时间*/
    private Date cateTime;

    /*赛事id*/
    private Long competitionId;
}
