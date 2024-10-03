package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.data.relational.core.mapping.Table;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2024/02/20 22:48:26
 * @Version: V1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("dictionary")
public class Dictionary extends CommonEntity{
    @TableField(value = "`key`")
    private String key;
    @TableField(value = "`value`")
    private String value;
    private String dictionaryType;
    private String dictionaryGroup;
}
