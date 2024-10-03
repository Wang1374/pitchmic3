package com.example.demo.videobarrage;


import com.example.demo.config.WSConfig;
import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.handler.codec.http.HttpContentCompressor;
import io.netty.handler.codec.http.HttpObjectAggregator;
import io.netty.handler.codec.http.HttpServerCodec;
import io.netty.handler.codec.http.websocketx.WebSocketServerProtocolHandler;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;
import io.netty.handler.timeout.IdleStateHandler;
import io.netty.util.concurrent.Future;
import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


/**
 * @ClassName NettyWebSocketServer
 * @Author kael
 * @Date 2023/6/3 14:38
 **/
@Slf4j
@Component
public class BarrageWebSocketServer {



    @Autowired
    private WSConfig wsConfig;

    private EventLoopGroup bossGroup = new NioEventLoopGroup(1);
    private EventLoopGroup workerGroup = new NioEventLoopGroup();

    /**
     * 启动
     * @throws InterruptedException
     */
    @PostConstruct
    public void start() throws InterruptedException {
        run();
    }

    /**
     * 销毁
     */
    @PreDestroy
    public void destroy() {
        Future<?> bossFuture = bossGroup.shutdownGracefully();
        Future<?> workerFuture = workerGroup.shutdownGracefully();
        bossFuture.syncUninterruptibly();
        workerFuture.syncUninterruptibly();
        log.info("关闭 ws server 成功");
    }



    public void run() throws InterruptedException {
        ServerBootstrap serverBootstrap = new ServerBootstrap();
        serverBootstrap.group(bossGroup, workerGroup)
            .channel(NioServerSocketChannel.class)
            .option(ChannelOption.SO_BACKLOG, 128)
            .option(ChannelOption.SO_KEEPALIVE, true)
            .handler(new LoggingHandler(LogLevel.INFO)) // 为 bossGroup 添加 日志处理器
            .childHandler(new ChannelInitializer<SocketChannel>() {
                @Override
                protected void initChannel(SocketChannel socketChannel) throws Exception {
                    ChannelPipeline pipeline = socketChannel.pipeline();
                    //30秒客户端没有向服务器发送心跳则关闭连接
                    pipeline.addLast(new IdleStateHandler(30, 0, 0));
                    // 将请求和应答消息编码或解码为HTTP消息
                    pipeline.addLast(new HttpServerCodec());
                    // 将HTTP消息的多个部分合成一条完整的HTTP消息
                    pipeline.addLast("aggregator",new HttpObjectAggregator(8192));
                    // 将HTTP消息进行压缩编码
                    pipeline.addLast("compressor ", new HttpContentCompressor());
                    // 自定义handler ，处理业务逻辑
                    pipeline.addLast("handler",new BarrageWebSocketServerHandler());
                    pipeline.addLast("protocol",new WebSocketServerProtocolHandler("/ws"));

                }
            });
        // 启动服务器，监听端口，阻塞直到启动成功
        serverBootstrap.bind(wsConfig.getBarrageWsPort()).sync();
    }
}
