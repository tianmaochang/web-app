<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<div id="app-main-container" class="white-bg">
	<div class="col-md-12">
		<div class="box information-management-box">
		
		    <%@ include file="/WEB-INF/include/message.jsp" %>

			<div class="operation-box">
				<shiro:hasPermission name="info:company:add">
					<a href="${base }/sys/info/company/create" class="btn btn-gy btn-add">
						<span class="glyphicon glyphicon-plus-sign"></span>
						新增
					</a>
				</shiro:hasPermission>
			</div>

			<div class="box-table">
				<table class="table table-photo-news">
					<thead>
						<tr>
							<%--<th><input type="checkbox" id="checkAll"></th>--%>
							<th>公司名称</th>
							<th>英文名称</th>
							<th>全国服务热线</th>
							<th>电话</th>
							<th>移动电话</th>
							<th>传真</th>
							<th width="120px;">管理</th>
						</tr>
					</thead>
					<tbody>
					    <c:forEach items="${page.data }" var="company">
							<tr>
								<%--<td><input type="checkbox" name="newsCheck" data-id="${company.id }"></td>--%>
								<td>${company.name }</td>
								<td>${company.enName }</td>
								<td>${company.hotline }</td>
								<td>${company.telephone }</td>
								<td>${company.mobile }</td>
								<td>${company.fax }</td>
								<td>
								    <shiro:hasPermission name="info:company:update">
										<a href="${base }/sys/info/company/update/${company.id}" class="edit">
											<i></i>
											编辑
										</a>
									</shiro:hasPermission>
									
									<shiro:hasPermission name="info:company:delete">
										<a href="${base }/sys/info/company/delete/${company.id}" onclick="javascript:return confirmDel();" class="delete">
											<i></i>
											删除
										</a>
									</shiro:hasPermission>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<%@ include file="/WEB-INF/include/page.jsp" %>

			</div>
			
		</div>
	</div>
</div>
</script>