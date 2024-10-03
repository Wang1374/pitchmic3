package com.example.demo.websocket.impl;

import com.alibaba.fastjson2.JSON;
import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.example.demo.entity.JwtAuthentication;
import com.example.demo.entity.TextLiveHistory;
import com.example.demo.entity.User;
import com.example.demo.websocket.NettyUtils;
import com.example.demo.websocket.UserConn;
import com.example.demo.websocket.WebsocketService;
import com.example.demo.websocket.req.MsgData;
import com.example.demo.websocket.req.Req;
import io.netty.channel.Channel;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.token.TokenService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * @ClassName WebsocketServiceImpl
 * @Author kael
 * @Date 2023/6/6 11:42
 **/
@Service("websocketService")
public class WebsocketServiceImpl implements WebsocketService {

    //salt
    private static final String secret = "superSecret";
    //expire time
    private static final Long overdueDate = 1000L * 60 * 60 * 24;

    //<竞赛id,<用户id,UserConn>>
    public static Map<String,Map<String,UserConn>> wsUserToConn = new ConcurrentHashMap<>();




    @Autowired
    @Qualifier("threadPoolTaskExecutor")
    private ThreadPoolTaskExecutor threadPoolTaskExecutor;



    @Override
    public User check(String uid, String token) {

        JWTVerifier jwtVerifier = JWT.require(Algorithm.HMAC256(secret)).build();
        jwtVerifier.verify(token);//verify if token validate
        JWT.decode(token).getExpiresAt(); // decode token, get expired time, later add expired but login, then extend expired time
        String json = com.alibaba.fastjson.JSON.parseObject(JWT.decode(token).getAudience().get(0)).toJSONString();//get client information
        //json switch to JwtAuthentication
        User user = com.alibaba.fastjson.JSON.parseObject(json, User.class);
        //JwtAuthentication.class is java reflection, is the compiled JwtAuthentication class
        if(user!=null){
            return user;
        }
        return null;
    }


    /**
     *
     * @param conn
     */
    @Override
    public void addUserConn(UserConn conn) {
        Map<String,UserConn> map = wsUserToConn.get(conn.getCompId());
        if(map==null){
            Map<String, UserConn> objectObjectConcurrentHashMap = new ConcurrentHashMap<>();
            objectObjectConcurrentHashMap.put(conn.getUserId(),conn);
            wsUserToConn.put(conn.getCompId(),objectObjectConcurrentHashMap);
        } else {
            UserConn userConn = map.get(conn.getUserId());
            if(userConn==null){
                map.put(conn.getUserId(),conn);
            } else {
                userConn.getChannel().close();
                map.put(conn.getUserId(),conn);
            }
        }
    }

    /**
     * 推送在线消息
     * @param msgData
     */
    public void push2User(MsgData msgData){
        Map<String, UserConn> map = WebsocketServiceImpl.wsUserToConn.get(msgData.getCompId());
        if (map==null)return;

        map.forEach((k,v)->{
            threadPoolTaskExecutor.execute(()->{
                //json
                TextWebSocketFrame textWebSocketFrame = new TextWebSocketFrame(JSON.toJSONString(msgData));
                v.getChannel().writeAndFlush(textWebSocketFrame);
            });
        });
    }


    @Override
    public boolean remove(Channel channel) {
        String compid = NettyUtils.getAttrCompid(channel);
        String uid = NettyUtils.getUid(channel);
        Map<String, UserConn> map = wsUserToConn.get(compid);
        if( map ==null) {
            return true;
        }
        map.remove(uid);

        return true;
    }


    @Override
    public void msgParse(Channel channel,String msg){
        Req req = JSON.parseObject(msg, Req.class);
        int reqIdentifier = req.getReqIdentifier();
        switch (reqIdentifier){

//            case Constants.WSSendMsg:
//                this.sendMsg(channel,req);
//                break;
//            case Constants.WSPullMsgBySeqList:
//                this.pullMsg(channel,req);
//                break;
//            default:
//                break;
        }
    }



    /**
     * 处理发送消息
     */
    public void sendMsg(Channel channel,Req req){
        //异步保存消息
        System.out.println(req);
//        byte[] data = req.getData();
        //推送消息
//        messageGateway.sendMessage("",req.getData());
    }



    public void pushMsg(Channel channel,String msg){
        TextWebSocketFrame textWebSocketFrame = new TextWebSocketFrame(msg);
        channel.writeAndFlush(textWebSocketFrame);
    }





}
