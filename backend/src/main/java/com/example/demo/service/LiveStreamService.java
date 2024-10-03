package com.example.demo.service;

import com.example.demo.entity.LiveStream;

import java.util.List;

public interface LiveStreamService {
    LiveStream createLiveStream(LiveStream liveStream);
    List<LiveStream> getLiveStream(LiveStream liveStream);
}
