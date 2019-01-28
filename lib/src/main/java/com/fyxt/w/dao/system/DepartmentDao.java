package com.fyxt.w.dao.system;

import java.util.List;

import com.fyxt.w.base.dao.CrudDao;
import com.fyxt.w.entity.common.TreeVo;
import com.fyxt.w.entity.system.Department;

public interface DepartmentDao extends CrudDao<Department>{

    public List<TreeVo> findTree();
    
}
