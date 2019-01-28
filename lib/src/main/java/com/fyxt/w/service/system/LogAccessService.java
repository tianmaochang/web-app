package com.fyxt.w.service.system;

import org.springframework.stereotype.Service;

import com.fyxt.w.base.service.CrudService;
import com.fyxt.w.dao.system.LogAccessDao;
import com.fyxt.w.entity.system.LogAccess;

@Service
public class LogAccessService extends CrudService<LogAccessDao, LogAccess>{

}
