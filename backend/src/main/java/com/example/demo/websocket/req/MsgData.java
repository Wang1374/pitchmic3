package com.example.demo.websocket.req;

/**
 * @ClassName MsgData
 * @Author kael
 * @Date 2023/6/2 17:21
 **/
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.List;

@Data
@Accessors(chain = true)
public class MsgData implements Serializable {
    /**
     * 1 = 分数改变
     * 2 = 文字改变
     * 3 = 直播弹幕
     */
    private Integer msgType;

    private String compId;

    private String data;

}
