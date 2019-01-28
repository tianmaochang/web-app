package com.fyxt.w.entity.common;

/******
 * O2O:经营细类状态
 * @author ATH
 *
 */
public enum ManagementClassStatus {
	
	ZS("展示"), QXZS("取消展示");
	
	private String name;
	
	private ManagementClassStatus(String name){
		this.name = name;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
