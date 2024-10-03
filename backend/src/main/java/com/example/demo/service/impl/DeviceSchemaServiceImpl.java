package com.example.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.dao.DeviceSchemaDao;
import com.example.demo.entity.DeviceSchema;
import com.example.demo.exception.ServiceException;
import com.example.demo.service.DeviceSchemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/13 22:39:37
 * @Version: V1.0
 */
@Service
public class DeviceSchemaServiceImpl extends ServiceImpl<DeviceSchemaDao, DeviceSchema> implements DeviceSchemaService {
    @Autowired
    DeviceSchemaDao deviceSchemaDao;

    @Override
    public List<DeviceSchema> getDeviceSchema(DeviceSchema deviceSchema) {
        return deviceSchemaDao.getDeviceSchema(deviceSchema);
    }

    @Override
    public Boolean createDeviceSchema(DeviceSchema deviceSchema) {
        return save(deviceSchema);
    }

    @Override
    public Integer removeById(Integer id) {
        DeviceSchema deviceSchema = new DeviceSchema();
        deviceSchema.setId(id);
        List<DeviceSchema> deviceSchemaList = getDeviceSchema(deviceSchema);
        if(deviceSchemaList == null || deviceSchemaList.size() == 0){
            throw new ServiceException("Device not found");
        }
        return deviceSchemaDao.removeById(id);
    }
}
