package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/13 20:56:35
 * @Version: V1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("team")
public class Team extends CommonEntity{
    private Integer id;
    private String name;
    private Integer logoId;
    private String intro;
    private String league;
    private String country;
//    private Integer adminId;
    @TableField(exist = false)
    private List<User> users;
    @TableField(exist = false)
    private User user;
    @TableField(exist = false)
    private FilePath filePath;
}
