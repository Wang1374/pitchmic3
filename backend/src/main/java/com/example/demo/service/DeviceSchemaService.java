package com.example.demo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.demo.dao.DeviceSchemaDao;
import com.example.demo.entity.DeviceSchema;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface DeviceSchemaService extends IService<DeviceSchema> {
    List<DeviceSchema> getDeviceSchema(DeviceSchema deviceSchema);
    Boolean createDeviceSchema(DeviceSchema deviceSchema);
    Integer removeById(Integer id);
}
