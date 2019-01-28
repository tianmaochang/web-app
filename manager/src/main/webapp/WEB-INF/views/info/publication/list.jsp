<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<div id="app-main-container" class="white-bg">
	<div class="col-md-12">
		<div class="box information-management-box">

			<%@ include file="/WEB-INF/include/message.jsp" %>

			<h3>条件检索</h3>

			<form id="searchForm" method="post" action="${base }/sys/info/publication">
				<div class="from-gy-controls">
					<div class="form-inline">

						<div class="form-group">
							<label>出版物名称：</label>
							<input type="text" name="pubName" value="${page.entity.pubName }" class="form-control" placeholder="出版物名称">
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
				<shiro:hasPermission name="info:publication:add">
					<a href="${base }/sys/info/publication/create" class="btn btn-gy btn-add">
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
						<th>出版物名称</th>
						<th>图片</th>
						<th>管理</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${page.data }" var="pub">
						<tr>
							<td><input type="checkbox" name="newsCheck" data-id="${pub.id }"></td>
							<td>${pub.pubName }</td>
							<td>
								<c:choose>
									<c:when test="${not empty pub.pubImgUrl }">
										<img src="${pub.pubImgUrl}" alt="${pub.pubName}">
									</c:when>
									<c:otherwise>
										<img src="${baseStatic }/img/no_pic.png" alt="">
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<shiro:hasPermission name="info:publication:update">
									<a href="${base }/sys/info/publication/update/${pub.id}" class="edit">
										<i></i>
										编辑
									</a>
								</shiro:hasPermission>

								<shiro:hasPermission name="info:publication:delete">
									<a href="${base }/sys/info/publication/delete/${pub.id}" onclick="javascript:return confirmDel();" class="delete">
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