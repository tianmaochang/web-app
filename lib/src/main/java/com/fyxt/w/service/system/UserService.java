package com.fyxt.w.service.system;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fyxt.w.base.service.CrudService;
import com.fyxt.w.dao.system.UserDao;
import com.fyxt.w.entity.system.User;

@Service
public class UserService extends CrudService<UserDao, User>{

    public int initPasswordBatch(List<User> users){
        return this.dao.initPasswordBatch(users);
    }
    
    public int updateUserStatusBatch(List<User> users){
        return this.dao.updateUserStatusBatch(users);
    }
    
    public User findByLoginName(String loginName){
        return this.dao.findByLoginName(loginName);
    }
    
    public int modifyPassword(User user){
        return this.dao.modifyPassword(user);
    }
    
}
