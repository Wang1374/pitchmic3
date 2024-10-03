package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/12/01 21:36:54
 * @Version: V1.0
 */
@Data
public class LiveLanguageRecords {
    private Integer id;
    private Integer languageId;
    private Integer liveRecordsId;
    private Integer fileId;
    private String title;
    private String liveStartKey;
    private String rtmpUrl;
    private Integer audioUserId;
    @TableField(exist = false)
    private Language language;
    @TableField(exist = false)
    private FilePath filePath;
    @TableField(exist = false)
    private User user;
    @TableField(exist = false)
    private LiveRecords liveRecords;
}
