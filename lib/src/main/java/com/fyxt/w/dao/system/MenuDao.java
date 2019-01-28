package com.fyxt.w.dao.system;

import java.util.List;

import com.fyxt.w.base.dao.CrudDao;
import com.fyxt.w.entity.common.TreeVo;
import com.fyxt.w.entity.system.Menu;

public interface MenuDao extends CrudDao<Menu>{

    public List<TreeVo> findTree();
    
    public List<Menu> findMenuForRole();
    
}
