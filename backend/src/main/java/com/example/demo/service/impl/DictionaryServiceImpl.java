package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.dao.DictionaryDao;
import com.example.demo.entity.Dictionary;
import com.example.demo.service.DictionaryService;
import javafx.util.Builder;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2024/02/25 22:18:20
 * @Version: V1.0
 */
@Service
public class DictionaryServiceImpl extends ServiceImpl<DictionaryDao, Dictionary> implements DictionaryService {
    private Wrapper<Dictionary> buildConditions(Dictionary dictionary){
        QueryWrapper<Dictionary> wrapper = Wrappers.query();
        if(dictionary != null){
            wrapper.and(dictionaryQueryWrapper -> {
                if(dictionary.getDictionaryType() != null && !dictionary.getDictionaryType().isEmpty()){
                    dictionaryQueryWrapper.eq("dictionary_type", dictionary.getDictionaryType());
                }
                if(dictionary.getKey() != null && !dictionary.getKey().isEmpty()){
                    dictionaryQueryWrapper.eq("key", dictionary.getKey());
                }
                if(dictionary.getValue() != null && !dictionary.getValue().isEmpty()){
                    dictionaryQueryWrapper.eq("value", dictionary.getValue());
                }
                if(dictionary.getDictionaryGroup() != null && !dictionary.getDictionaryGroup().isEmpty()){
                    dictionaryQueryWrapper.eq("dictionary_group", dictionary.getDictionaryGroup());
                }
            });
        }
        return wrapper;
    }

    @Override
    public List<Dictionary> getDictionaryByType(String type) {
        Dictionary dictionary = new Dictionary();
        dictionary.setDictionaryType(type);
        return super.list(buildConditions(dictionary));
    }

    @Override
    public List<Dictionary> getDictionaryByGroup(String group) {
        Dictionary dictionary = new Dictionary();
        dictionary.setDictionaryGroup(group);
        return super.list(buildConditions(dictionary));
    }

    @Override
    public List<Dictionary> getDictionary(Dictionary dictionary) {
        return super.list(buildConditions(dictionary));
    }
}
