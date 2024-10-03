package com.example.demo.controller;

import com.example.demo.entity.Team;
import com.example.demo.entity.User;
import com.example.demo.service.TeamService;
import com.example.demo.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.xml.transform.Result;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/13 23:27:41
 * @Version: V1.0
 */
@RestController
@RequestMapping("/team")
public class TeamController extends CommonalityController{
    @Autowired
    TeamService teamService;
    //get all the teams
    @GetMapping("/getTeamList")
    public ResultUtils getTeam(){
        return ResultUtils.success(teamService.getTeams());
    }
    //get current team
//    @GetMapping("/getTeamInfo")
//    public ResultUtils getTeamInfo(){
//        return ResultUtils.success(teamService.getTeamInfo(getUserInfo()));
//    }
    //get all team except for current team
//    @GetMapping("/getNotCurrentTeam")
//    public ResultUtils getNotCurrentTeam(){
//        return ResultUtils.success(teamService.getNotCurrentTeam(getUserInfo()));
//    }

    @PostMapping("/createTeam")
    public ResultUtils createTeam(Team team, @DefaultValue(value = "") MultipartFile file){
        return ResultUtils.success(teamService.createTeam(team, file));
    }

    @PostMapping("/editTeam")
    public ResultUtils editTeam(Team team, @DefaultValue(value = "") MultipartFile file){
        return ResultUtils.success(teamService.editTeam(team, file));
    }

    @DeleteMapping("/deleteTeamById")
    public ResultUtils deleteTeamById(Integer id){
        return ResultUtils.success(teamService.removeById(id));
    }
}


























