package com.fyxt.w.base;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.fyxt.w.config.GlobalSiteConfig;
import com.fyxt.w.config.SiteConfig;

public class BaseController {
    
    protected Logger log = LoggerFactory.getLogger(getClass());
    
    @Autowired
    protected SiteConfig siteConfig;
    
    /**
     * cdnDomain
     * @return
     */
    @ModelAttribute(GlobalSiteConfig.CND_DOMAIN)
    public String getCdnDomain() {
        return siteConfig.getCdnDomain();
    }
    
}
