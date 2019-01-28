<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<style>
	span.error{
		display:block;
		background-position: 0 3px;
	}
</style>

<div id="app-main-container" class="white-bg">
	<div class="col-md-12">
		<div class="box information-management-edit">
		
			<h2>${empty img.id ? "新增" : "编辑" }图片</h2>

            <form id="news_form" method="post">
			<!-- hidden -->
			<input type="hidden" name="id" value="${img.id }" />
			
			<div class="row">
				<div class="col-md-12">

					<hr>

					<div class="row row-list">
						<div class="col-md-1">
							<label>图片名称：</label>
						</div>

						<div class="col-md-8">
							<input name="imgName" type="text" class="form-control {required:true, maxlength:500, messages:{required:'请输入图片名称', maxlength:'图片名称的最大长度为50字符'}}" placeholder="图片名称" value="${img.imgName }">
						</div>
					</div>

					<div class="row row-list">
						<div class="col-md-1">
							<label>选择图片：</label>
						</div>
						
						<div class="col-md-8">

					        <style>
					        	#imgPathFile-button{width:auto;}
					        </style>
							<input type="file" id="imgPathFile" name="imgPathFile" />
							<!-- hidden -->
							<input type="hidden" id="imgUrl" name="imgUrl" value="${img.imgUrl}" />
							
							<span class="tips-text">（750px*255px 200K以内）</span>
							
							<span id="imgPathTips" class="error" style="display:none;">图片必须上传，请确认</span>
							<br>
							<!-- 回显图片 -->
							<c:choose>
								<c:when test="${not empty img.imgUrl }">
									<img id="imgPathView" src="${img.imgUrl}" alt="" style="width:75px;height:77px;">
								</c:when>
								<c:otherwise>
									<img id="imgPathView" src="${baseStatic }/img/no_pic.png" alt="" style="width:75px;height:77px;">
								</c:otherwise>
							</c:choose>
						</div>
					</div>
	
				  	<div class="row row-list">
				  		<div class="col-md-1">
	
				  		</div>
				  		<div class="col-md-8">
				  			<div class="operation-box">
								<button type="submit" class="btn btn-gy btn-query">
									<span class="glyphicon glyphicon-ok-sign"></span>
									提交
								</button>
								<button type="button" onclick="javascript:history.back();" class="btn btn-gy btn-sort">
									<span class="glyphicon glyphicon-arrow-left"></span>
									返回
								</button>
							</div>
				  		</div>
				  	</div>

				</div>
			</div>
			</form>

		</div>
	</div>
</div>

<%@ include file="/WEB-INF/include/ckeditor.jsp" %>
<%@ include file="/WEB-INF/include/uploadify.jsp" %>
<script type="text/javascript">
/**
 * 定时清除文件上传控件的校验提示
 */
setInterval(function(){
	 var imgPathVal = $("#imgPath").val();
	
    if(imgPathVal){
    	$("#imgPathTips").hide();
    }
}, 1000);

/**
 * 表单校验
 */
$("#news_form").validate({
	errorPlacement: function (error, element){
		error.appendTo(element.parent());  
	},
	submitHandler:function(form){
		 //图片是否上传的校验
        var imgPathVal = $("#imgUrl").val();
        if(!imgPathVal){
       	  $("#imgPathTips").show();
       	  return false;
        }
        
        form.submit();
   }
});

/**
 * 处理上传图片
 * @param file
 * @param data
 * @param response
 */
function dealImgNewsUpload(file, data, response) {
	var result = eval("(" + data + ")");
      if(result.status){
           $("#imgPathView").attr("src", result.url);
           $("#imgUrl").val(result.url);
      }else{
           alert(result.message);
      }
}

/**
 * 页面初始化
 */
$(document).ready(function(){
	uploadifyPro.auto = true;
	uploadifyPro.multi = false;
	uploadifyPro.fileExt = "*.gif;*.jpg;*.jpeg;*.png;*.bmp;*.ico";
	uploadifyPro.buttonClass = "btn btn-gy btn-upload";
	uploadifyPro.fileSizeLimit = "200k";
	uploadifyPro.buttonText = "上传图片";
	uploadifyPro.width='75px', //按钮宽度
	uploadifyPro.onUploadSuccess = dealImgNewsUpload;
	
	//上传二级栏目头标
	$("#imgPathFile").uploadify(uploadifyPro);
});
</script>