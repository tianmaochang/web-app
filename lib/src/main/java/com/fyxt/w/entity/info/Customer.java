package com.fyxt.w.entity.info;

import com.fyxt.w.base.annotation.FormQuery;
import com.fyxt.w.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

/**
 * 客户实体类
 */
@Getter
@Setter
public class Customer extends BaseEntity {
	
	private static final long serialVersionUID = 1892982395026689338L;

	@FormQuery
    private String cusName;  //客户名称
    private String cusImgUrl;  //客户图片路径
}