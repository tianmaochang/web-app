package com.fyxt.w.base.interceptor;

import java.util.Date;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.fyxt.w.common.utils.HttpUtils;
import com.fyxt.w.common.utils.SessionUtils;
import com.fyxt.w.entity.system.LogAccess;
import com.fyxt.w.entity.system.User;
import com.fyxt.w.service.system.LogAccessService;

/**
 * 访问日志拦截
* @author ZhangBo   
* @date 2017年4月14日 下午2:18:11
 */
public class LogAccessInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    private LogAccessService logAccessService;
    
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
            throws Exception {
        
        User user = SessionUtils.getUser();
        try{
            this.logAccessService.save(new LogAccess(
                    user, 
                    new Date(), 
                    request.getRequestURI(), 
                    this.buildParams(request),
                    HttpUtils.getRemoteAddr(request)));
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    
    private String buildParams(HttpServletRequest request){
        StringBuilder builder = new StringBuilder();
        Enumeration<String> names = request.getParameterNames();
        while(names.hasMoreElements()){
            String name = names.nextElement();
            String value = request.getParameter(name);
            builder.append(name).append("=").append(value).append("|");
        }
        return builder.toString();
    }
    
}
