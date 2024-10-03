package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@ToString
public class CommonEntity {
    @TableId
    private Integer id;
    private Date updateDate;
    private Date createDate;
    private String removeIdentity;
    private Integer updateUser;
    private Integer createUser;
    private String status;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @TableField(exist = false)
    private Date startDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @TableField(exist = false)
    private Date endDate;
}
