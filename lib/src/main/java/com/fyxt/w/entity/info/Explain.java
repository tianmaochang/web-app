package com.fyxt.w.entity.info;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

import com.fyxt.w.base.annotation.FormQuery;
import com.fyxt.w.base.entity.BaseEntity;
import com.fyxt.w.entity.common.ImageNewsType;
import com.fyxt.w.entity.common.InfoPushStatus;
import com.fyxt.w.entity.common.InfoStatus;

/******
 * 产品说明实体类
 */
@Getter
@Setter
public class Explain extends BaseEntity {
	
	private static final long serialVersionUID = 1892982395026689338L;
    
    private String msg;  //产品说明

    private Date createTime;

    private Date updateTime;
}