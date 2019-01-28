package com.fyxt.w.entity.common;

/******
 * 信息类型
 * @author ATH
 *
 */
public enum InfoType {
	
	JTL("交通类"), WZL("文章类");
	
	private String name;
	
	private InfoType(String name){
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
