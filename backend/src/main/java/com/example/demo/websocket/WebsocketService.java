package com.example.demo.websocket;


import com.example.demo.entity.TextLiveHistory;
import com.example.demo.entity.User;
import com.example.demo.websocket.req.MsgData;
import io.netty.channel.Channel;
import org.springframework.stereotype.Service;


public interface WebsocketService {

    User check(String uid, String token);

    void msgParse(Channel channel,String msg);

    /**
     * 新增连接
     * @param conn
     */
   void addUserConn(UserConn conn);


   boolean remove(Channel channel);

    public void push2User(MsgData msgData);



}
