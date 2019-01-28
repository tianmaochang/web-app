package com.fyxt.w.entity.info;

import com.fyxt.w.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

/**
 * 出版物实体类
 */
@Getter
@Setter
public class Publication extends BaseEntity {
	
	private static final long serialVersionUID = 1892982395026689338L;
    
    private String pubName;  //出版物名称
    private String pubImgUrl;  //出版物图片路径
}