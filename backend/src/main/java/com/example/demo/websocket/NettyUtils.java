package com.example.demo.websocket;


import io.netty.channel.Channel;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.Attribute;
import io.netty.util.AttributeKey;

/**
 * @ClassName NettyUtils
 * @Author kael
 * @Date 2023/6/6 19:45
 **/

public final class NettyUtils {


    public static final String ATTR_USERNAME = "username";

    public static final String ATTR_UID = "uid";



    public static final String ATTR_TOKEN = "token";

    public static final String ATTR_COMPID = "compid";

    private static final AttributeKey<Object> ATTR_KEY_USERNAME = AttributeKey.valueOf(ATTR_USERNAME);


    private static final AttributeKey<Object> ATTR_KEY_TOKEN = AttributeKey.valueOf(ATTR_TOKEN);

    private static final AttributeKey<Object> ATTR_KEY_UID = AttributeKey.valueOf(ATTR_UID);

    private static final AttributeKey<Object> ATTR_KEY_COMPID = AttributeKey.valueOf(ATTR_COMPID);



    public static Object getAttribute(ChannelHandlerContext ctx, AttributeKey<Object> key) {
        Attribute<Object> attr = ctx.channel().attr(key);
        return attr.get();
    }


    public static void userName(Channel channel, String username) {
        channel.attr(NettyUtils.ATTR_KEY_USERNAME).set(username);
    }


    public static String userName(Channel channel) {
        return (String) channel.attr(NettyUtils.ATTR_KEY_USERNAME).get();
    }


    public static void token(Channel channel, String username) {
        channel.attr(NettyUtils.ATTR_KEY_TOKEN).set(username);
    }


    public static String token(Channel channel) {
        return (String) channel.attr(NettyUtils.ATTR_KEY_TOKEN).get();
    }


    public static void setUid(Channel channel, String username) {
        channel.attr(NettyUtils.ATTR_KEY_UID).set(username);
    }


    public static String getUid(Channel channel) {
        return (String) channel.attr(NettyUtils.ATTR_KEY_UID).get();
    }

    public static void setCompId(Channel channel, String compId) {
        channel.attr(NettyUtils.ATTR_KEY_COMPID).set(compId);
    }


    public static String getAttrCompid(Channel channel) {
        return (String) channel.attr(NettyUtils.ATTR_KEY_COMPID).get();
    }


    private NettyUtils() {
    }
}
