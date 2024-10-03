package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/26 21:44:59
 * @Version: V1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("game")
public class Game extends CommonEntity{
    private Integer teamId;
    private Integer targetTeamId;
    private Integer teamScore;
    private Integer targetTeamScore;
    private Date startTime;
    private Date endTime;
}
