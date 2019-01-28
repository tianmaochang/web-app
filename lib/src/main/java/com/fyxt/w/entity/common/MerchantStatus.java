package com.fyxt.w.entity.common;

/******
 * O2O:商户状态
 * @author ATH
 *
 */
public enum MerchantStatus {
	
	ZS("展示"), QXZS("取消展示");
	
	private String name;
	
	private MerchantStatus(String name){
		this.name = name;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
