package com.fyxt.w.entity.common;

/******
 * 图片新闻类型
 * @author ATH
 *
 */
public enum ImageNewsType {
	
	WL("外链"), ZB("自编");
	
	private String name;
	
	private ImageNewsType(String name){
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
