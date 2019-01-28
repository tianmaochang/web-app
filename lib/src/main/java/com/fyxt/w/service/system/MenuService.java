package com.fyxt.w.service.system;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fyxt.w.base.service.CrudService;
import com.fyxt.w.dao.system.MenuDao;
import com.fyxt.w.entity.common.TreeVo;
import com.fyxt.w.entity.system.Menu;

@Service
public class MenuService extends CrudService<MenuDao, Menu>{

    public List<TreeVo> findTree(){
        return this.dao.findTree();
    }
    
    public List<Menu> findMenuForRole(){
        return this.dao.findMenuForRole();
    }
    
}
