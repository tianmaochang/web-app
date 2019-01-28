package com.fyxt.w.entity.info;

import com.fyxt.w.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

/**
 * 储藏酒指导实体类
 */
@Getter
@Setter
public class StoreGuide extends BaseEntity {
	
	private static final long serialVersionUID = 1892982395026689338L;
    
    private String title;  //标题
    private String content;  //内容
}