package com.fyxt.w.entity.common;

import java.util.List;

import com.alibaba.fastjson.serializer.SimplePropertyPreFilter;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TreeVo {
    
    public static final SimplePropertyPreFilter parentFilter = new SimplePropertyPreFilter(TreeVo.class, "value", "label");
    
    public static final SimplePropertyPreFilter childFilter = new SimplePropertyPreFilter(TreeVo.class, "value", "label", "level");

    private String label;
    
    private Long value;
    
    private int level;
    
    private List<TreeVo> childs;
}
