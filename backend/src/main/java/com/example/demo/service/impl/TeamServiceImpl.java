package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.injector.methods.SelectById;
import com.baomidou.mybatisplus.core.injector.methods.SelectByMap;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.controller.TeamController;
import com.example.demo.dao.RoleDao;
import com.example.demo.dao.TeamDao;
import com.example.demo.dao.UserAndRoleDao;
import com.example.demo.entity.*;
import com.example.demo.exception.ServiceException;
import com.example.demo.service.FilePathService;
import com.example.demo.service.TeamService;
import com.example.demo.service.UserAndRoleService;
import com.example.demo.utils.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/13 23:32:43
 * @Version: V1.0
 */
@Service
public class TeamServiceImpl extends ServiceImpl<TeamDao, Team> implements TeamService {
    @Autowired
    private FilePathService filePathService;

    @Autowired
    private UserAndRoleService userAndRoleService;

    @Autowired
    private UserAndRoleDao userAndRoleDao;

    @Autowired
    private RoleDao roleDao;

    @Autowired
    private TeamDao teamDao;

    public List<Team> getTeams() {
        return getBaseMapper().getTeam();
    }

//    @Override
//    public Team getTeamInfo(User userInfo) {
//        return getBaseMapper().getTeamInfo(userInfo);
//    }

//    @Override
//    public List<Team> getNotCurrentTeam(User userinfo) {
//        return getBaseMapper().getNotCurrentTeam(userinfo);
//    }

    @Transactional(rollbackFor = {Exception.class , ServiceException.class})
    @Override
    public Team createTeam(Team team, MultipartFile file) {
        //set file path then logo id
        if(file != null){
            FilePath filePath = null;
            try {
                filePath = FileUtils.createFile(file);
            }catch (IOException e){
                throw new ServiceException("Fail to update the team logo!");
            }
            if(filePath != null){
                if(filePathService.save(filePath)){
                    if(team != null){
                        team.setLogoId(filePath.getId());
                    }
                }
            }
        }
        //set user role
//        if(teamDao.checkTeamAdmin(team.getAdminId()) == 0){
//            UserAndRole userAndRole = new UserAndRole();
//            userAndRole.setUserId(team.getAdminId());
//            Role role = roleDao.getRoleByRoleValue("ROLE_team_admin");
//            userAndRole.setRoleId(role.getId());
//            userAndRoleService.save(userAndRole);
//        }
        save(team);
        return team;
    }

    @Override
    @Transactional(rollbackFor = {Exception.class , ServiceException.class})
    public Team editTeam(Team team, MultipartFile file) {
        if(file != null){
            FilePath filePath = null;
            try {
                filePath = FileUtils.createFile(file);
            }catch (IOException e){
                throw new ServiceException("Fail to update the team logo!");
            }
            if(filePath != null){
                if(filePathService.save(filePath)){
                    if(team != null){
                        team.setLogoId(filePath.getId());
                    }
                }
            }
        }

        Team preTeam = super.getById(team.getId());//A
        //B
//        if(teamDao.checkTeamAdmin(team.getAdminId()) == 0){
//            UserAndRole userAndRole = new UserAndRole();
//            userAndRole.setUserId(team.getAdminId());
//            Role role = roleDao.getRoleByRoleValue("ROLE_team_admin");
//            userAndRole.setRoleId(role.getId());
//            userAndRoleService.save(userAndRole);
//        }
        teamDao.updateTeam(team); //A ->B, team adminId B
        //search A
//        if(teamDao.checkTeamAdmin(preTeam.getAdminId()) == 0){
//            UserAndRole userAndRole = new UserAndRole();
//            userAndRole.setUserId(preTeam.getAdminId());
//            Role role = roleDao.getRoleByRoleValue("ROLE_team_admin");
//            userAndRole.setRoleId(role.getId());
//            userAndRoleDao.removeUserAndRole(userAndRole);
//        }
        return team;
    }
}
