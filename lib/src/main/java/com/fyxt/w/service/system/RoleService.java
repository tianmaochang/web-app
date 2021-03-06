package com.fyxt.w.service.system;

import org.springframework.stereotype.Service;

import com.fyxt.w.base.service.CrudService;
import com.fyxt.w.dao.system.RoleDao;
import com.fyxt.w.entity.system.Role;

@Service
public class RoleService extends CrudService<RoleDao, Role>{

    @Override
    public int save(Role entity) {
        this.dao.insert(entity);
        return this.dao.insertRoleMenu(entity);
    }

    @Override
    public int delete(Long id) {
        this.dao.deleteRoleMenu(id);
        return this.dao.delete(id);
    }

    @Override
    public int update(Role entity) {
        this.dao.deleteRoleMenu(entity.getId());
        this.dao.update(entity);
        this.dao.insertRoleMenu(entity);
        return super.update(entity);
    }
    
    public Integer getCountByRoleName(Role role){
        return this.dao.getCountByRoleName(role);
    }
    
    public Role getRoleMenus(Long id){
        return this.dao.getRoleMenus(id);
    }

}
