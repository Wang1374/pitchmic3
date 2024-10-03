package com.example.demo.websocket.req;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

@Data
@ToString
public class Req implements Serializable {
    @JsonProperty("reqIdentifier")
    private int reqIdentifier;

    @JsonProperty("token")
    private String token;

    @JsonProperty("sendID")
    private String sendID;

    @JsonProperty("operationID")
    private String operationID;

    @JsonProperty("msgIncr")
    private String msgIncr;

    @JsonProperty("data")
    private String data;
}
