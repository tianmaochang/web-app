package com.fyxt.w.service.system;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fyxt.w.base.service.CrudService;
import com.fyxt.w.dao.system.DepartmentDao;
import com.fyxt.w.entity.common.TreeVo;
import com.fyxt.w.entity.system.Department;

@Service
public class DepartmentService extends CrudService<DepartmentDao, Department>{

    public List<TreeVo> findTree(){
        return this.dao.findTree();
    }
    
}
