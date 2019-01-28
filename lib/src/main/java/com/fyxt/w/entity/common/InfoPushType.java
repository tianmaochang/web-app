package com.fyxt.w.entity.common;

/******
 * 信息推送中的信息类型
 * @author ATH
 *
 */
public enum InfoPushType {
	
	LMWZ("栏目文章"), TPXW("图片新闻"), TZGG("紧急公告");
	
	private String name;
	
	private InfoPushType(String name){
		this.name = name;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
