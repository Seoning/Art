<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Admin_Top.jsp" %>
<style>
	.table {
	width: 50%;
	margin: auto;
	}
	#title {
		text-align: center;
	}
</style>
ex_list.jsp<br>

	<form>
		<table class="table table-hover" id="title">
			<tr class="table-secondary">
				<th scope="row">No.</th>
				<th scope="row">제목</th>
				<th scope="row">작가</th>
				<th scope="row">시작일</th>
				<th scope="row">종영일</th>
				<th scope="row">전시회장</th>
			</tr>
			
			<c:if test="${empty lists }">
				<tr>
					<th colspan="6"><center>현재 등록된 전시회가 없습니다.</center></th>
				</tr>
			</c:if>
			
			<c:forEach var="eb" items="${lists }">
			<tr class="table-secondary">
				<td>${eb.no }</td>
				<td><a href="detail.ex?no=${mb.no }">${eb.title }</a></td>
				<td>${eb.painter }</td>
				<td>${eb.startday }</td>
				<td>${eb.endday }</td>
				<td>${eb.museum }</td>
			</tr>
			</c:forEach>
		</table>
	</form>

<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>