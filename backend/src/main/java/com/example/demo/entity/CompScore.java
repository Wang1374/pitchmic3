package com.example.demo.entity;

import lombok.Data;

/**
 * @ClassName CompScore
 * @Author kael
 * @Date 2024/4/24 21:51
 **/
@Data
public class CompScore {
    /**
     * 操作的分数 +n/-n
     */
    private Integer score;

    /**
     * 竞赛场次
     */
    private Long compId;

    /**
     * 选手编码
     */
    private String playerId;
}
