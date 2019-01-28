package com.fyxt.w.base.datasource;

import java.lang.annotation.*;


/**
 * 创建拦截设置数据源的注解
 */
@Target({ElementType.METHOD,ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface TargetDataSource {
    String dataSource() default "";
}
