package com.fyxt.w.config;


/******
 * 站点基础配置
 * @author ATH
 *
 */
public class SiteConfig {
	
    //(js/css/img等静态资源服务器)
    private String cdnDomain;

    public String getCdnDomain() {
        return cdnDomain;
    }

    public void setCdnDomain(String cdnDomain) {
        this.cdnDomain = cdnDomain;
    }
    
}
