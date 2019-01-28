package com.fyxt.w.service.system;

import org.springframework.stereotype.Service;

import com.fyxt.w.base.service.CrudService;
import com.fyxt.w.dao.system.LogLoginDao;
import com.fyxt.w.entity.system.LogLogin;

@Service
public class LogLoginService extends CrudService<LogLoginDao, LogLogin>{

}
