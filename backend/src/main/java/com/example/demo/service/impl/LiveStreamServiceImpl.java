package com.example.demo.service.impl;

import com.example.demo.dao.LiveStreamDao;
import com.example.demo.entity.LiveStream;
import com.example.demo.service.LiveStreamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/05 21:47:45
 * @Version: V1.0
 */
@Service
public class LiveStreamServiceImpl implements LiveStreamService {
    @Autowired
    LiveStreamDao liveStreamDao;

    @Override
    public LiveStream createLiveStream(LiveStream liveStream) {
        return liveStreamDao.createLiveStream(liveStream);
    }

    @Override
    public List<LiveStream> getLiveStream(LiveStream liveStream) {
        return liveStreamDao.getLiveStream(liveStream);
    }
}
