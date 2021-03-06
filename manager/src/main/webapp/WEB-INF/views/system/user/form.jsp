<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<div id="app-main-container" class="white-bg">
					<div class="col-md-12">
						<div class="box information-management-edit sysmanage-user-add">
							<%@ include file="/WEB-INF/include/message.jsp" %>
							
							<h2>${empty user.id ? "新增" : "编辑" }用户</h2>
							<form id="user_form" method="post">
							<input type="hidden" name="id" value="${user.id }">
							
							<div class="row">
								<div class="col-md-12">
									<hr>
									<div class="row row-list">
										<div class="col-md-1">
											<label>登录名：</label>
										</div>
										<div class="col-md-8">
											<input type="text" name="loginName"  <c:if test="${not empty user.loginName }">readonly="readonly"</c:if>
											value="${user.loginName }" class="form-control {required:true,maxlength:20}" placeholder="用户名">
										</div>
									</div>

									<div class="row row-list">
										<div class="col-md-1">
											<label>真实姓名：</label>
										</div>
										<div class="col-md-8">
											<input type="text" name="name" value="${user.name }" class="form-control {required:true,maxlength:20}" placeholder="真实姓名">
										</div>
									</div>

									<div class="row row-list">
										<div class="col-md-1">
											<label>联系电话：</label>
										</div>
										<div class="col-md-8">
											<input type="text" name="tel" value="${user.tel }" class="form-control {maxlength:20}" placeholder="联系电话">
										</div>
									</div>
									
									<c:if test="${empty user.id }">
										<div class="row row-list">
											<div class="col-md-1">
												<label>密码：</label>
											</div>
											<div class="col-md-8">
												<input type="password" id="password" name="password" class="form-control {required:true,minlength:6,maxlength:30}" placeholder="密码">
											</div>
										</div>
	
										<div class="row row-list">
											<div class="col-md-1">
												<label>重复密码：</label>
											</div>
											<div class="col-md-8">
												<input type="password" name="rePassword" class="form-control {required:true,minlength:6,maxlength:30,equalTo:'#password'}" placeholder="重复密码">
											</div>
										</div>
									</c:if>

									<div class="row row-list">
										<div class="col-md-1">
											<label>所属部门：</label>
										</div>
										<div class="col-md-8">
											<sys:smartselect hiddenName="department.id" message="请选择所属部门" 
												moduleId="user-department" treeData="${departmentsTree }" hiddenValue="${user.department.id }"/>
										</div>
									</div>

									<div class="row row-list">
										<div class="col-md-1">
											<label>归属角色：</label>
										</div>
										<div class="col-md-8">
											<select class="form-control {required:true}" name="role.id">
												<c:forEach items="${roles }" var="r">
												  	<option value="${r.id }" <c:if test="${r.id eq user.role.id }">selected="selected"</c:if>>${r.name }</option>
												  </c:forEach>
											</select>
										</div>
									</div>
							  	<div class="row row-list">
							  		<div class="col-md-1"></div>
							  		<div class="col-md-8">
							  			<div class="operation-box">
												<button type="submit" class="btn btn-gy btn-query"><span class="glyphicon glyphicon-ok-sign"></span>提交</button>
												<button type="button" onclick="javascript:history.back();" class="btn btn-gy btn-sort"><span class="glyphicon glyphicon-arrow-left"></span>返回</button>
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
	$("#user_form").validate({
		errorPlacement: function (error, element){
			error.appendTo(element.parent());  
		},
		invalidHandler: function(form, validator) {  
			window._resize('.sysmanage-user-add');
		}
	});
</script>