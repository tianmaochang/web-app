package com.fyxt.w.common.vo.es.agg;

import com.alibaba.fastjson.annotation.JSONField;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseAggs {
    
    @JSONField(name="aggregations",serialize=false)
    private Aggregations aggs;
    
    @JSONField(name="aggs")
    public Aggregations getAggs(){
        return this.aggs;
    }
    
}