package com.example.demo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.demo.entity.Dictionary;

import java.util.List;

public interface DictionaryService extends IService<Dictionary> {
    List<Dictionary> getDictionaryByType(String type);
    List<Dictionary> getDictionaryByGroup(String group);
    List<Dictionary> getDictionary(Dictionary dictionary);
}
