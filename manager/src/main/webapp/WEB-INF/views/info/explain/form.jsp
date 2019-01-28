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
		
			<h2>${empty explain.id ? "新增" : "编辑" }产品说明</h2>

            <form id="ex_form" method="post">
				<!-- hidden -->
				<input type="hidden" name="id" value="${explain.id }" />
				
				<div class="row">
					<div class="col-md-12">
	
						<hr>

						<div class="row row-list">
							<div class="col-md-1">
								<label>说明内容：</label>
							</div>

							<div class="col-md-8">
								<textarea name="msg" id="msg" class="form-control {required:true, maxlength:500, messages:{required:'请输入说明内容', maxlength:'内容的最大长度为500字符'}}" placeholder="说明内容" style="width: 450px;height: 200px;">${explain.msg}</textarea>
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
 * 表单校验
 */
$("#ex_form").validate({
	errorPlacement: function (error, element){
		error.appendTo(element.parent());
	},
	submitHandler:function(form){

        form.submit();
   }
});
</script>