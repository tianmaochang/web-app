package com.fyxt.w.entity.info;

import com.fyxt.w.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

/**
 * 用户实体类
 */
@Getter
@Setter
public class Contacts extends BaseEntity {
	
	private static final long serialVersionUID = 1892982395026689338L;
    
    private String username;  //用户名称
    private String company;  //用户公司
    private String phone;  //用户电话
    private String email;  //用户电子邮箱
    private String remark;  //其他信息
}