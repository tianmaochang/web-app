package com.fyxt.w.common.vo;

import org.apache.commons.lang3.StringUtils;

import com.fyxt.w.common.utils.JodaUtil;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DateVo {

    private String begin;
    
    private String end;
    
    public boolean isDate(){
        return StringUtils.isNotBlank(this.begin) || StringUtils.isNotBlank(this.end);
    }
    
    public String getBeginHH(){
        if(this.begin == null){
            return null;
        }
        return this.begin + JodaUtil.HHMMSS_START;
    }
    
    public String getEndHH(){
        if(this.end == null){
            return null;
        }
        return this.end + JodaUtil.HHMMSS_END;
    }
}
