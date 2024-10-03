package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/11/18 20:27:44
 * @Version: V1.0
 */
@Data
public class EmailConfig implements Serializable {
    @TableId
    private Integer id;

    /** 邮箱名称 */
    private String name;

    /** SMTP服务 */
    private String host;

    /** 端口 */
    private Integer port;

    /** 账号 */
    private String username;

    /** 密码 */
    private String password;

    /** 是否开启debug） */
    private Boolean debug;

    /** 启用SSL */
    private Boolean enableSsl;

    private String status;
}

