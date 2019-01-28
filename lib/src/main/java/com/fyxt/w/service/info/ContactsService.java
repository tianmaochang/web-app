package com.fyxt.w.service.info;


import com.fyxt.w.base.service.CrudService;
import com.fyxt.w.dao.info.ContactsDao;
import com.fyxt.w.entity.info.Contacts;
import org.springframework.stereotype.Service;

@Service
public class ContactsService extends CrudService<ContactsDao, Contacts> {

}
