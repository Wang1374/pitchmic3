package com.example.demo.videobarrage.entity;

import lombok.Data;

import java.util.Date;

/**
 * @ClassName Barrage
 * @Author kael
 * @Date 2024/4/25 21:03
 **/
@Data
public class Barrage {
    private Integer id;

    private String text;

    private Date pushTime;
}
