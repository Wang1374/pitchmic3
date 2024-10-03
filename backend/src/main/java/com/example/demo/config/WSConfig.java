package com.example.demo.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @ClassName ImConfig
 * @Author kael
 * @Date 2023/6/9 16:17
 **/
@Data
@Component
@ConfigurationProperties(prefix = "ws")
public class WSConfig {

    private Integer  wsPort = 2000;

    private Integer barrageWsPort = 2002;


}
