package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/13 20:58:56
 * @Version: V1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FilePath extends CommonEntity{
    private Integer id;
    private String outPath;
    private String inputPath;
    private String fileType;//png/img audio/mp3
    private String fileName;
    @TableField(value = "`type`")
    private String type;//background or advertisement...
    private String suffix;//img mp3 mp4 mdf
}
