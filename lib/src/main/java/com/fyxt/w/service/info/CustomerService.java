package com.fyxt.w.service.info;


import com.fyxt.w.base.service.CrudService;
import com.fyxt.w.dao.info.CustomerDao;
import com.fyxt.w.entity.info.Customer;
import org.springframework.stereotype.Service;

@Service
public class CustomerService extends CrudService<CustomerDao, Customer> {

}
