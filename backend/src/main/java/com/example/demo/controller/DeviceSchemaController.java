package com.example.demo.controller;

import com.example.demo.entity.DeviceSchema;
import com.example.demo.service.DeviceSchemaService;
import com.example.demo.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/13 21:56:34
 * @Version: V1.0
 */
@RestController
@RequestMapping("/deviceSchema")
public class DeviceSchemaController extends CommonalityController{
    @Autowired
    DeviceSchemaService deviceSchemaService;

    public ResultUtils createDeviceSchema(@RequestBody DeviceSchema deviceSchema){
        if(deviceSchemaService.createDeviceSchema(deviceSchema)){
            return ResultUtils.success("saved");
        }
        return ResultUtils.error("fail to save");
    }
    public ResultUtils getDeviceSchema(@RequestBody DeviceSchema deviceSchema){
        return ResultUtils.success(deviceSchemaService.getDeviceSchema(deviceSchema));
    }
    public ResultUtils removeDeviceById(@RequestParam("id") Integer id){
        if(id == null || id <= 0){
            return ResultUtils.error("wrong value");
        }
        if(deviceSchemaService.removeById(id) > 0){
            return ResultUtils.success("deleted");
        }
        return ResultUtils.error("fail to delete");
    }
}
