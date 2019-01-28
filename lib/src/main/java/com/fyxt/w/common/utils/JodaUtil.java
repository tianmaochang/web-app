package com.fyxt.w.common.utils;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.joda.time.DateTime;
import org.joda.time.Days;

/**
 * 日期处理
* @author ZhangBo   
* @date 2017年4月11日 上午9:25:16
 */
public class JodaUtil {
    
    private final static String YYYY_MM_DD = "yyyy-MM-dd";
    
    public final static String YYYY_MM_DDHH_mm_ss = "yyyy-MM-dd HH:mm:ss";
    
    public final static String HHMMSS_START = " 00:00:00";
    public final static String HHMMSS_END = " 23:59:59";
    
    public static Date parseDate(String dateStr){
        DateTime dt = DateTime.parse(dateStr);
        return dt.toDate();
    }
    
    //获得指定日期0点时间
    public static Date getMorning(Date date) {  
        DateTime newDt = new DateTime(date).millisOfDay().withMinimumValue();
        return newDt.toDate();
    }

    //获得指定日期24点时间
    public static Date getNight(Date date) {  
        DateTime newDt = new DateTime(date).millisOfDay().withMaximumValue();
        return newDt.toDate();
    }
    
    public static String format(Date date, String pattern){
        DateTime dt = new DateTime(date);
        return dt.toString(pattern);
    }
    
    public static String format(Date date){
        DateTime dt = new DateTime(date);
        return dt.toString(YYYY_MM_DD);
    }
    
    public static String formatHHmmss(Date date){
        DateTime dt = new DateTime(date);
        return dt.toString(YYYY_MM_DDHH_mm_ss);
    }
    
    public static String getYear() {  
        DateTime dt = new DateTime(new Date());
        return dt.toString("yyyy");
    }
    
    public static String getMonth() {  
        DateTime dt = new DateTime(new Date());
        return dt.toString("MM");
    }
    
    public static String getDay() {  
        DateTime dt = new DateTime(new Date());
        return dt.toString("dd");
    }
    
    public static String getMinusDays(int days, String pattren) {  
        DateTime dt = new DateTime(new Date());
        if(days == 0){
            return dt.toString(pattren);
        }
        
        DateTime minDay = dt.minusDays(days);
        return minDay.toString(pattren);
    }
    
    public static int getDays(String start, String end) {  
        return Days.daysBetween(DateTime.parse(start), DateTime .parse(end)).getDays();
    }
    
    /******
     * 向前或者向后获取日期
     * @param date
     * @param day(整数往后推,负数往前移动)
     * @return
     */
    @SuppressWarnings("static-access")
	public static String getFormatDate(Date date, int day){
    	 Calendar calendar = new GregorianCalendar();
         calendar.setTime(date); 
         calendar.add(calendar.DATE, day);
         date = calendar.getTime();
         
         DateTime dt = new DateTime(date);
         return dt.toString(YYYY_MM_DD);
    }
}
