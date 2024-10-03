package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/12 21:54:27
 * @Version: V1.0
 */
//only when extends another class need this annotation, it is to compare two class,
//InvitationRecord is not equal to CommonEntity,
//CommonEntity include invitationRecord so it's class could be equal to InvitationRecord
@EqualsAndHashCode(callSuper = true)
@Data
public class InvitationRecord extends CommonEntity{
    private Integer id;
    private String invitationCode;
    private Integer inviterId;
    private Integer inviteeRoleId;
    private Integer inviteeId;
    @TableField(exist = false)
    private Role role;
}
