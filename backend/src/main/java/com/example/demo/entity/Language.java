package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/30 23:13:23
 * @Version: V1.0
 */
@Data
@TableName("language")
public class Language {
    private Integer id;
    private String name;
}
