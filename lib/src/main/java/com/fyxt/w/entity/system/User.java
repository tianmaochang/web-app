package com.fyxt.w.entity.system;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

import com.fyxt.w.base.annotation.FormQuery;
import com.fyxt.w.base.entity.BaseEntity;
import com.fyxt.w.entity.common.UserStatus;

/**
 * 系统用户
* @author ZhangBo   
* @date 2014年7月10日 上午10:44:48
 */
@Getter
@Setter
public class User extends BaseEntity{
    
    private static final long serialVersionUID = -2328940840754591148L;

    //真实姓名
    private String name;

    //登陆名
    @FormQuery
	private String loginName;
    
    private String tel;
	
    //密码
	private String password;
    
	//角色
    @FormQuery("role.id")
	private Role role;
    
    //部门
    private Department department;
    
    //启用、禁用
    private UserStatus status = UserStatus.OPEN;
    
    //创建时间
    private Date createDate;
    
    //加密密码的盐
    private String salt;
    
    /** VO start  **/
    @FormQuery
    private List<Long> departments;
    
    private String rePassword;
    
    private String reTwoPassword;
    
    private List<User> users;

    //排除不显示用户
    private List<String> isNot = new ArrayList<>();

    public void filterUsers(){
        if(users == null){
            return;
        }
        Iterator<User> iter = users.iterator();
        while(iter.hasNext()){
            User r = iter.next();  
            if(r == null || r.getId() == null){
                iter.remove();
            }
        }  
    }

    //加密盐组合
    public String getCredentialsSalt() {
        return loginName + salt;
    }
    
    /** Vo end **/
}