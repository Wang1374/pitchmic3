package com.example.demo.videobarrage;


import com.example.demo.entity.User;
import com.example.demo.utils.SpringUtils;
import com.example.demo.websocket.NettyUtils;
import com.example.demo.websocket.UserConn;
import com.example.demo.websocket.WebsocketService;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StringUtils;

import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName NettyWebSocketServerHandler
 * @Author kael
 * @Date 2023/6/5 21:37
 **/
@Slf4j
@ChannelHandler.Sharable
public class BarrageWebSocketServerHandler extends SimpleChannelInboundHandler<TextWebSocketFrame> {


    private WebsocketService websocketService;

    public BarrageWebSocketServerHandler() {
        websocketService = SpringUtils.getBean("barrageWsServiceImpl");
    }

    /**
     * 连接
     * @param ctx
     * @throws Exception
     */
    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {

        super.channelActive(ctx);
    }

    /**
     * 断开
     * @param ctx
     * @throws Exception
     */
    @Override
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        websocketService.remove(ctx.channel());
        super.channelInactive(ctx);
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
        if (null != msg && msg instanceof FullHttpRequest) {
            FullHttpRequest request = (FullHttpRequest) msg;
            String uri = request.uri();
            if (null != uri && uri.contains("token") && uri.contains("?")) {
                Map<String, String> paramMap = new HashMap<>();
                String[] uriArray = uri.split("\\?");
                if (null != uriArray && uriArray.length > 1) {
                    String[] paramsArray = uriArray[1].split("&");
                    for (String paramMapString : paramsArray) {
                        String[] split = paramMapString.split("=");
                        System.out.println(split[0]+" - "+split[1]);
                        paramMap.put(split[0],split[1]);
                    }
                }
                if(paramMap.get("token")!=null){
                    NettyUtils.token(ctx.channel(),paramMap.get("token"));
                }
                request.setUri("/ws");
                User check = websocketService.check(null, paramMap.get("token"));
                String compId = paramMap.get("compId");

                if(check==null || StringUtils.isEmpty(compId)){
                    ctx.close();
                } else {
                    UserConn userConn = new UserConn();
                    userConn.setChannel(ctx.channel());
                    userConn.setCompId(compId);
                    userConn.setUserId(check.getId()+"");
                    NettyUtils.setUid(ctx.channel(),check.getId()+"");
                    websocketService.addUserConn(userConn);
                }
            } else {
                ctx.close();
            }
        }
        super.channelRead(ctx, msg);
    }

    /**
     * 心跳
     * @param ctx
     * @param evt
     * @throws Exception
     */
    @Override
    public void userEventTriggered(ChannelHandlerContext ctx, Object evt) throws Exception {
        super.userEventTriggered(ctx, evt);
    }

    /**
     * 文字实况 server -> user 不会通过 user -> server 长连接
     * 弹幕  user -> server 长连接
     * 监听
     * user -> server
     * @param ctx
     * @param textWebSocketFrame
     * @throws Exception
     */
    @Override
    protected void channelRead0(ChannelHandlerContext ctx, TextWebSocketFrame textWebSocketFrame) throws Exception {
        try{
            websocketService.msgParse(ctx.channel(),textWebSocketFrame.text());
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        ctx.close();
        log.error("服务器发生了异常: [ {} ]", cause);
    }


}
