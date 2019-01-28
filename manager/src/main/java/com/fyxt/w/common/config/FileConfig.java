package com.fyxt.w.common.config;

import lombok.Getter;
import lombok.Setter;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Getter
@Setter
@Component
public class FileConfig {

    @Value("#{settings['file.path']}")
    private String basePath;
    
    @Value("#{settings['file.mapping']}")
    private String mapping;
    
    @Value("#{settings['web.base.url']}")
    private String webBaseUrl;
    
}
