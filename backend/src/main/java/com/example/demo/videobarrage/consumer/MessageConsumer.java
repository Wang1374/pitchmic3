package com.example.demo.videobarrage.consumer;

import com.alibaba.fastjson2.JSON;
import com.example.demo.videobarrage.service.BarrageWsServiceImpl;
import com.example.demo.websocket.UserConn;
import com.example.demo.websocket.impl.WebsocketServiceImpl;
import com.example.demo.websocket.req.MsgData;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;
import lombok.extern.slf4j.Slf4j;
import org.apache.rocketmq.spring.annotation.MessageModel;
import org.apache.rocketmq.spring.annotation.RocketMQMessageListener;
import org.apache.rocketmq.spring.core.RocketMQListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * @ClassName MessageConsumer
 * @Author kael
 * @Date 2024/4/25 21:29
 **/
@Service
@Slf4j
// 集群 2消费者 监听一个topic 2消费者其中一个 消费这条消息 而不是两个都消费这条消息
// 广播 2消费者 监听一个topic 2消费者都 消费这条消息
@RocketMQMessageListener(topic = "msg_topic", consumerGroup = "consumer_topic_group",messageModel = MessageModel.BROADCASTING)
public class MessageConsumer implements RocketMQListener<MsgData> {


    @Autowired
    @Qualifier("threadPoolTaskExecutor")
    private ThreadPoolTaskExecutor threadPoolTaskExecutor;

    @Override
    public void onMessage(MsgData msgData) {
        Map<String, UserConn> integerListMap = BarrageWsServiceImpl.wsUserToConn.get(msgData.getCompId());
        if (integerListMap==null)return;
        integerListMap.forEach((k,v)->{
            threadPoolTaskExecutor.execute(()->{
                TextWebSocketFrame textWebSocketFrame = new TextWebSocketFrame(JSON.toJSONString(msgData));
                v.getChannel().writeAndFlush(textWebSocketFrame);
            });
        });

    }
}
