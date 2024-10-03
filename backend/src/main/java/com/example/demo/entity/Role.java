package com.example.demo.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.security.core.GrantedAuthority;

import javax.management.relation.RoleInfo;
@Data
@EqualsAndHashCode(callSuper = false)
public class Role extends CommonEntity implements GrantedAuthority {
    private Integer id;
    private String roleValue;
    private String roleName;
    private String authority;

    @Override
    public String getAuthority() {
        return this.roleValue;
    }

    public void setRoleValue(String roleValue){
        if(roleValue != null && !roleValue.isEmpty()){
            if(roleValue.contains("ROLE_")){
                this.roleValue = roleValue;
            }else{
                this.roleValue = "ROLE_" +roleValue;
            }
        }
    }
}
