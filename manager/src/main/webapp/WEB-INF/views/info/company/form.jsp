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
		
			<h2>${empty company.id ? "新增" : "编辑" }公司信息</h2>

            <form id="news_form" method="post">
			<!-- hidden -->
			<input type="hidden" name="id" value="${company.id }" />
			
			<div class="row">
				<div class="col-md-12">

					<hr>

					<div class="row row-list">
						<div class="col-md-1">
							<label>公司名称：</label>
						</div>

						<div class="col-md-8">
							<input name="name" type="text" class="form-control {required:true, maxlength:500, messages:{required:'请填写公司名称', maxlength:'公司名称的最大长度为500字符'}}" placeholder="公司名称" value="${company.name }">
						</div>
					</div>

					<div class="row row-list">
						<div class="col-md-1">
							<label>公司英文名称：</label>
						</div>

						<div class="col-md-8">
							<input name="enName" type="text" class="form-control {required:true, maxlength:500, messages:{required:'请输入公司英文名称', maxlength:'公司英文名称的最大长度为500字符'}}" placeholder="公司英文名称" value="${company.enName }">
						</div>
					</div>

					<div class="row row-list">
						<div class="col-md-1">
							<label>全国服务热线：</label>
						</div>

						<div class="col-md-8">
							<input name="hotline" type="text" class="form-control {required:true, maxlength:500, messages:{required:'请输入服务热线', maxlength:'服务热线的最大长度为500字符'}}" placeholder="服务热线" value="${company.hotline }">
						</div>
					</div>

					<div class="row row-list">
						<div class="col-md-1">
							<label>公司电话：</label>
						</div>

						<div class="col-md-8">
							<input name="telephone" type="text" class="form-control {required:true, maxlength:20, messages:{required:'请输入公司电话', maxlength:'公司电话的最大长度为20字符'}}" placeholder="公司电话" value="${company.telephone }">
						</div>
					</div>

					<div class="row row-list">
						<div class="col-md-1">
							<label>移动电话：</label>
						</div>

						<div class="col-md-8">
							<input name="mobile" type="text" class="form-control {required:true, maxlength:11, messages:{required:'请输入移动电话', maxlength:'移动电话的最大长度为11字符'}}" placeholder="移动电话" value="${company.mobile }">
						</div>
					</div>

					<div class="row row-list">
						<div class="col-md-1">
							<label>传真：</label>
						</div>

						<div class="col-md-8">
							<input name="fax" type="text" class="form-control {required:true, maxlength:11, messages:{required:'请输入传真地址', maxlength:'传真地址的最大长度为11字符'}}" placeholder="传真地址" value="${company.fax }">
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

<script type="text/javascript">

/**
 * 表单校验
 */
$("#news_form").validate({
	errorPlacement: function (error, element){
		error.appendTo(element.parent());  
	},
	submitHandler:function(form){
        
        form.submit();
   }
});
</script>