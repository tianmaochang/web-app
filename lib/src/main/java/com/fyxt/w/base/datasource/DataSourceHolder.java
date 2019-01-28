package com.fyxt.w.base.datasource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

/**
 *保存当前线程数据源使用的数据源名
 */
@Component
public class DataSourceHolder {
    public static final String DEFAULT = "dataSource";
    /**
    * 注意：数据源标识保存在线程变量中，避免多线程操作数据源时互相干扰
    */
    private static final ThreadLocal<String> contextHandler  = new ThreadLocal<String>();

    public static String getDataSource() {
        System.out.println(java.text.MessageFormat.format("线程[{0}],获取使用的数据源={1}"
                ,Thread.currentThread().getName()
                ,contextHandler.get()));

        String dataSource = contextHandler.get();
        if (StringUtils.isEmpty(dataSource)) {
            return DEFAULT;
        }else {
            return dataSource;
        }
    }

    public static void setDataSource(String dataSource) {
        contextHandler .set(dataSource);

        System.out.println(java.text.MessageFormat.format("线程[{0}],设置使用的数据源={1}"
                ,Thread.currentThread().getName()
                ,dataSource));
    }

    public static void clearDataSource() {
        contextHandler .remove();
    }
}
