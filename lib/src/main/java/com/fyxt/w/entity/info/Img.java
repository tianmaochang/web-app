package com.fyxt.w.entity.info;

import com.fyxt.w.base.annotation.FormQuery;
import com.fyxt.w.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

/**
 * 图库实体类
 */
@Getter
@Setter
public class Img extends BaseEntity {
	
	private static final long serialVersionUID = 1892982395026689338L;

    @FormQuery
    private String imgName;  //图片名称
    private String imgUrl;  //图片路径
}