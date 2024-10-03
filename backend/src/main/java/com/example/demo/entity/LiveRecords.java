package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;
import java.util.List;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/19 23:31:44
 * @Version: V1.0
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("live_records")
public class LiveRecords extends CommonEntity{
    private Integer id;
    private Integer teamId;
    private Integer liveId;
    private Integer targetTeamId;
    private Date registerDate;
    private Integer filePathId;
    private Integer gameId;
    private Integer commentatorId;
//    private Integer languageId;
    @TableField(exist = false)
    private Team team;
    @TableField(exist = false)
    private Team targetTeam;
    @TableField(exist = false)
    private LiveRegister liveRegister;
    @TableField(exist = false)
    private Game game;
//    @TableField(exist = false)
//    private Language language;
    @TableField(exist = false)
    private List<LiveLanguageRecords> languageRecords;
}
