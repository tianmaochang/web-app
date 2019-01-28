package com.fyxt.w.entity.system;

import java.util.List;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import com.fyxt.w.base.entity.BaseEntity;
import com.fyxt.w.entity.common.MenuType;

/**
 * 系统菜单
* @author ZhangBo   
* @date 2014年10月23日 上午11:18:49
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper=true,of={Menu.ID2})
public class Menu extends BaseEntity{
    
    static final String ID2 = "id";

    private static final long serialVersionUID = 6965086422964894144L;

    private String name; //资源名称 
    
    private String href; //资源路径
    
    private String permission; //权限字符串
    
    private MenuType type;
    
    private Integer sort = 1; //排序号
    
    private String icon; //图标
    
    private Menu parent;  //父编号
    
    private List<Menu> childs;
}
