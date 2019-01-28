package com.fyxt.w.dao.system;

import com.fyxt.w.base.dao.CrudDao;
import com.fyxt.w.entity.system.Role;

public interface RoleDao extends CrudDao<Role>{

    public int deleteRoleMenu(Long id);

    public int insertRoleMenu(Role role);
    
    public Integer getCountByRoleName(Role role);
    
    public Role getRoleMenus(Long id);
    
}
