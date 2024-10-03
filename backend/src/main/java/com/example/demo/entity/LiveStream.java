package com.example.demo.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.security.core.GrantedAuthority;

import java.util.Date;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/05 21:55:31
 * @Version: V1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class LiveStream extends CommonEntity{
    private Integer id;
    private String streamKey;
    private String liveStreamName;
    private Integer streamerId;
    private Date liveStreamStartDate;
}
