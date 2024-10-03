package com.example.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.dao.GameDao;
import com.example.demo.entity.Game;
import com.example.demo.service.GameService;
import org.springframework.stereotype.Service;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/12/06 22:45:42
 * @Version: V1.0
 */
@Service
public class GameServiceImpl extends ServiceImpl<GameDao, Game> implements GameService {
}
