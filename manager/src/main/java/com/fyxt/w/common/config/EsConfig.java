package com.fyxt.w.common.config;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpHost;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.fyxt.w.common.utils.JodaUtil;

@Getter
@Setter
@Component
public class EsConfig {
    
    public static final String LOG_AUTH_PREFIX = "/log/auth/";
    
    private static final String URL = "/%s/%s/_search?from=%d&size=%d";
    
    private static final String DATE_PATTERN = "yyyy.MM.dd";
    
    private static final int DEFAULT_FROM = 0;
    private static final int DEFAULT_SIZE = 0;
    
    
    @Value("#{settings['es.index.name.prefix']}")
    private String indexNamePrefix;
    
    @Value("#{settings['es.index.type.name']}")
    private String typeName;
    
    @Value("#{settings['es.addresses']}")
    private String address;
    
    @Value("#{settings['es.conn.timeout']}")
    private int connTimeout;
    
    @Value("#{settings['es.socket.timeout']}")
    private int socketTimeout;
    
    @Value("#{settings['es.maxretry.timeout']}")
    private int maxRetryTimeout;
    
    public String getUrl(){
        return this.getUrl(DEFAULT_FROM, DEFAULT_SIZE);
    }
    
    public String getUrl(int from, int size){
        String date = JodaUtil.format(new Date(), DATE_PATTERN);
        return this.getUrl(from, size, this.indexNamePrefix + date);
    }
    
    public String getUrl(String date){
        if(StringUtils.isBlank(date)){
            return this.getUrl();
        }
        date = date.replaceAll("\\-", ".");
        return this.getUrl(DEFAULT_FROM, DEFAULT_SIZE, this.indexNamePrefix + date);
    }
    
    public String getUrl(int from, int size, String indexName){
        return String.format(URL, indexName, this.typeName, from, size);
    }
    
    public HttpHost[] getHttpHosts(){
        if(this.address == null){
            return null;
        }
        List<HttpHost> hosts = new ArrayList<HttpHost>();
        String []arrHosts = this.address.split("\\;");
        for(String hostStr : arrHosts){
            if(hostStr.indexOf(":") == -1){
                throw new RuntimeException("es params config error");
            }
            
            String []addre = hostStr.split("\\:");
            hosts.add(new HttpHost(addre[0], Integer.valueOf(addre[1])));
        }
        HttpHost []arrayHost = new HttpHost[hosts.size()];
        return hosts.toArray(arrayHost);
    }
}
