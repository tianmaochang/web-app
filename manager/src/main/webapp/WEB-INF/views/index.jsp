<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<script>
    /**
     * 文档内容加载是触发此事件
     */
   document.addEventListener("DOMContentLoaded", function(){
       var appMain = document.getElementById("app-main");
       appMainHeight = window.innerHeight - document.getElementById("top").offsetHeight;
       appMain.style.background = "url(${baseStatic}/img/gy-login-bg.jpg) no-repeat center center";
       appMain.style.backgroundSize = "cover";
   });
</script>