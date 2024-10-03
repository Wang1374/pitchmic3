package com.example.demo.entity;

import lombok.Data;

import java.util.Date;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/12 22:07:49
 * @Version: V1.0
 */
@Data
public class LiveStreamLog {
    private Integer id;
    private String streamKey;
    private String liveStreamName;
    private Date liveStreamStartDate;
    private Date liveStreamStopDate;
    private Integer viewerCount;
}
