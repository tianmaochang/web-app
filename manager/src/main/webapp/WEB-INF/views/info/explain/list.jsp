<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<div id="app-main-container" class="white-bg">
	<div class="col-md-12">
		<div class="box information-management-box">
		
		    <%@ include file="/WEB-INF/include/message.jsp" %>

			<div class="operation-box">
				<shiro:hasPermission name="info:explain:add">
					<a href="${base }/sys/info/explain/create" class="btn btn-gy btn-add">
						<span class="glyphicon glyphicon-plus-sign"></span>
						新增
					</a>
				</shiro:hasPermission>
			</div>

			<div class="box-table">
				<table class="table table-photo-news">
					<thead>
						<tr>
							<th><input type="checkbox" id="checkAll"></th>
							<th>编号</th>
							<th>说明内容</th>
							<th>管理</th>
						</tr>
					</thead>
					<tbody>
					    <c:forEach items="${page.data }" var="ex">
							<tr>
								<td><input type="checkbox" name="newsCheck" data-id="${ex.id }"></td>
								<td>${ex.id }</td>
								<td>${ex.msg }</td>
								<td>
								    <shiro:hasPermission name="info:explain:update">
										<a href="${base }/sys/info/explain/update/${ex.id}" class="edit">
											<i></i>
											编辑
										</a>
									</shiro:hasPermission>
									
									<shiro:hasPermission name="info:explain:delete">
										<a href="${base }/sys/info/explain/delete/${ex.id}" onclick="javascript:return confirmDel();" class="delete">
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
