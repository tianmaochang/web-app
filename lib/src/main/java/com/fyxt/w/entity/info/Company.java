package com.fyxt.w.entity.info;

import com.fyxt.w.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

/**
 * 公司实体类
 */
@Getter
@Setter
public class Company extends BaseEntity {
	
	private static final long serialVersionUID = 1892982395026689338L;
    
    private String name;  //公司名称
    private String enName;  //公司英文名称
    private String hotline;  //全国服务热线
    private String telephone;  //电话
    private String mobile;  //移动电话
    private String fax;  //传真
}