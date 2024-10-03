package com.example.demo.controller;

import com.example.demo.entity.UserAndRole;
import com.example.demo.service.RoleService;
import com.example.demo.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/11/03 21:51:37
 * @Version: V1.0
 */
@RestController
@RequestMapping("role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @GetMapping("getRoles")
    public ResultUtils getRoles() {
        return ResultUtils.success(roleService.getRoles());
    }

    @PostMapping("updateRole")
    public ResultUtils updateRoles(@RequestBody List<UserAndRole> userAndRole){
        return ResultUtils.success(roleService.updateRole(userAndRole));
    }
}
