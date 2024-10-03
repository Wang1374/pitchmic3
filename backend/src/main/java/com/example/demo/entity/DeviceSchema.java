package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/13 20:49:24
 * @Version: V1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("device_schema")
public class DeviceSchema extends CommonEntity{
    private String name;
    private String devicePassword;
    private String deviceSerial;
    private Date manufactureDate;
    private Integer ownerUserId;
    private String deviceStreamKey;
}
