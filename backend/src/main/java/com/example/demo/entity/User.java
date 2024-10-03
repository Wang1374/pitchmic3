package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;

@EqualsAndHashCode(callSuper = true)
@Data
public class User extends CommonEntity implements UserDetails {
    private String name;
    private String password;
    private String email;
    private String phone;
    private String identity;
    private Integer profilePicture;
    @TableField(exist = false)
    private List<Role> roles;
    private String code;
    private Integer teamId;
    @TableField(exist = false)
    private FilePath filePath;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return this.roles;
    }

    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public String getUsername() {
        return null;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
