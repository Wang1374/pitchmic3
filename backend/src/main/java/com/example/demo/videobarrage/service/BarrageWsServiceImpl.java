package com.example.demo.videobarrage.service;

import com.alibaba.fastjson2.JSON;
import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.example.demo.entity.User;
import com.example.demo.utils.SpringUtils;
import com.example.demo.websocket.NettyUtils;
import com.example.demo.websocket.UserConn;
import com.example.demo.websocket.WebsocketService;
import com.example.demo.websocket.impl.WebsocketServiceImpl;
import com.example.demo.websocket.req.MsgData;
import com.example.demo.websocket.req.Req;
import io.netty.channel.Channel;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;
import jakarta.annotation.Resource;
import org.apache.rocketmq.spring.core.RocketMQTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * @ClassName BarrageWsServiceImpl
 * @Author kael
 * @Date 2024/4/25 20:49
 **/
@Service("barrageWsServiceImpl")
public class BarrageWsServiceImpl  implements WebsocketService {


    @Resource
    private RocketMQTemplate rocketMQTemplate;

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
     * 推送弹幕消息
     * @param msgData
     */
    public void push2User(MsgData msgData){
        //发送异步消息，参数：topic、消息
        rocketMQTemplate.convertAndSend("msg_topic",msgData);

    }


    @Override
    public boolean remove(Channel channel) {
        String uid = NettyUtils.getUid(channel);
        wsUserToConn.remove(uid);

        return true;
    }


    /**
     * 1 -> msg -> 10000
     * @param channel
     * @param msg
     */
    @Override
    public void msgParse(Channel channel,String msg){
        MsgData req = JSON.parseObject(msg, MsgData.class);
        int type = req.getMsgType();
        switch (type){
            case 3:
                this.push2User(req);
            default:
                break;

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
