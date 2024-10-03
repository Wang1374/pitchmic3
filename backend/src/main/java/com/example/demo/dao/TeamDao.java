package com.example.demo.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.entity.Team;
import com.example.demo.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface TeamDao extends BaseMapper<Team> {
    List<Team> getTeam();
//    Team getTeamInfo(@Param("user") User userInfo);
//    List<Team> getNotCurrentTeam(@Param("user") User userInfo);
    Team getTeamById(@Param("id") Integer id);
    Integer updateTeam(@Param("team") Team team);
//    Integer checkTeamAdmin(@Param("teamAdminId") Integer teamAdminId);
}
