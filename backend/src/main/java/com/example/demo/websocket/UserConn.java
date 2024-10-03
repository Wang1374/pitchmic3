package com.example.demo.websocket;



import io.netty.channel.Channel;
import lombok.Data;

/**
 * @ClassName UserConn
 * @Author kael
 * @Date 2023/6/6 11:31
 **/
@Data
public class UserConn {

    private String token;

    private Channel channel;

    private String userId;

    private Integer platformID;

    private String compId;


}
