package com.fyxt.w.dao.system;

import java.util.List;

import com.fyxt.w.base.dao.CrudDao;
import com.fyxt.w.entity.system.User;

public interface UserDao extends CrudDao<User>{

    public int initPasswordBatch(List<User> users);
    
    public int updateUserStatusBatch(List<User> users);
    
    public User findByLoginName(String loginName);
    
    public int modifyPassword(User user);
    
}
