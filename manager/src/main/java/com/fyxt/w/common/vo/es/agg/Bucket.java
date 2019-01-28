package com.fyxt.w.common.vo.es.agg;

import lombok.Getter;
import lombok.Setter;
import cn.afterturn.easypoi.excel.annotation.Excel;

import com.alibaba.fastjson.annotation.JSONField;

@Getter
@Setter
public class Bucket {

    @Excel(name = "日期")
    private String exportDate;
    
    @JSONField(name="doc_count",serialize=false)
    @Excel(name = "访问人数")
    private int count;
    
    private String key;
    
    @JSONField(name="key_as_string")
    private String keyString;
    
    //导出统计使用
    private Entitys entirys;
    
    @JSONField(name="count")
    public int getCount(){
        return this.count;
    }
    
    public String getKeyForDate(){
        if(key == null){
            return null;
        }
        int _indexChar = key.indexOf(".");
        if(_indexChar > -1){
            String date = key.substring(_indexChar + 1);
            return date.replace(".", "月") + "日";
        }
        return null;
    }
    
    public String getExportDate(){
        if(key == null){
            return null;
        }
        if(key.indexOf("n-a") > -1){
            return key.substring(3).replace(".", "-");
        }
        return null;
    }
}
