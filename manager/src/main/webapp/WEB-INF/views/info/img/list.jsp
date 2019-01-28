<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<div id="app-main-container" class="white-bg">
	<div class="col-md-12">
		<div class="box information-management-box">
		
		    <%@ include file="/WEB-INF/include/message.jsp" %>
		    
			<h3>条件检索</h3>

            <form id="searchForm" method="post" action="${base }/sys/info/img">
			<div class="from-gy-controls">
				<div class="form-inline">
				  
				  <div class="form-group">
				    <label>图片名称：</label>
				    <input type="text" name="imgName" value="${page.entity.imgName }" class="form-control" placeholder="图片名称">
				  </div>

				  <div class="form-group">
					 <div class="operation-box operation-head-box">
					     <script type="text/javascript">
						    function search(){
						    	$("#searchForm").submit();
						    }
						 </script>
						 <button type="button" onclick="search();" class="btn btn-gy btn-recovery">
							 <span class="glyphicon glyphicon-search"></span>
							   查询
						 </button>
					 </div>
				  </div>

				</div>
			</div>
			</form>

			<div class="operation-box">
				<shiro:hasPermission name="info:img:add">
					<a href="${base }/sys/info/img/create" class="btn btn-gy btn-add">
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
							<th>图片名称</th>
							<th>图片</th>
							<th>管理</th>
						</tr>
					</thead>
					<tbody>
					    <c:forEach items="${page.data }" var="img">
							<tr>
								<td><input type="checkbox" name="newsCheck" data-id="${img.id }"></td>
								<td>
									${img.imgName }
								</td>
								<td>
								    <c:choose>
								    	<c:when test="${not empty img.imgUrl }">
								    		<img src="${img.imgUrl}" alt="${img.imgName}">
								    	</c:when>
								    	<c:otherwise>
								    		<img src="${baseStatic }/img/no_pic.png" alt="">
								    	</c:otherwise>
								    </c:choose>
								</td>
								<td>
								    <shiro:hasPermission name="info:img:update">
										<a href="${base }/sys/info/img/update/${img.id}" class="edit">
											<i></i>
											编辑
										</a>
									</shiro:hasPermission>
									
									<shiro:hasPermission name="info:img:delete">
										<a href="${base }/sys/info/img/delete/${img.id}" onclick="javascript:return confirmDel();" class="delete">
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