<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Admin_Top.jsp" %>
<style>
	.table {
	width: 80%;
	margin: auto;
	}
	#title {
		text-align: center;
	}
	.card{
		align-items: center;
		margin: auto;
	}
</style>
<br>
<div class="card border-primary mb-3" style="max-width: 20rem;">
	<div class="card-title">전시회 목록</div>
</div>

	<form>
		<table class="table table-hover" id="title">
			<tr class="table-primary">
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
			<tr class="table-light">
				<td>${eb.no }</td>
				<td><a href="detail.ex?no=${eb.no }">${eb.title }</a></td>
				<td>${eb.painter }</td>
				<td>${eb.startday }</td>
				<td>${eb.endday }</td>
				<td>${eb.museum }</td>
			</tr>
			</c:forEach>
		</table>
	</form>
	<br>
	<center>
		<input type="button" value="등록하기" onclick="location.href='exinsert.ex'" class="btn btn-outline-primary">
	</center>
<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>