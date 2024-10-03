package com.example.demo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.demo.entity.Team;
import com.example.demo.entity.User;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;

public interface TeamService extends IService<Team> {
    List<Team> getTeams();
//    Team getTeamInfo(User userInfo);
//    List<Team> getNotCurrentTeam(User userinfo);
    Team createTeam(Team team, MultipartFile file);
    Team editTeam(Team team, MultipartFile file);
}
