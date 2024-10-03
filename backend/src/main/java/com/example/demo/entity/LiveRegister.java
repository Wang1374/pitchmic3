package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/19 23:22:54
 * @Version: V1.0
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("live_register")
public class LiveRegister extends CommonEntity{
    private String title;
    private Integer adminId;
    private String rtmpUrl;
    private String liveStartKey;
    private Date startDate;
    @TableField(exist = false)
    private LiveRecords liveRecords;
    @TableField(exist = false)
    private User user;
}
