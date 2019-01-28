package com.fyxt.w.common.vo;

import lombok.Getter;
import lombok.Setter;
import cn.afterturn.easypoi.excel.annotation.Excel;

@Getter
@Setter
public class AuthExcelVo {

    @Excel(name = "日期")
    private String exportDate;
    
    @Excel(name = "微信")
    private int weixin;
    
    @Excel(name = "短信")
    private int sms;
    
}
