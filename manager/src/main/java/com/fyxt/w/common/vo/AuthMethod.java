package com.fyxt.w.common.vo;

import lombok.Getter;

import com.fyxt.w.common.config.EsConfig;

@Getter
public enum AuthMethod {
    
    SMS("sms","短信认证"),WX("wx","微信认证");
    
    private String key;
    
    private String value;
    
    AuthMethod(String key, String value){
        this.key = key;
        this.value = value;
    }
    
    public static AuthMethod getAuthMethodByUrl(String url){
        if(url == null){
            return null;
        }
        for(AuthMethod method : AuthMethod.values()){
            if(url.startsWith(EsConfig.LOG_AUTH_PREFIX + method.getKey())){
                return method;
            }
        }
        return null;
    }

}
