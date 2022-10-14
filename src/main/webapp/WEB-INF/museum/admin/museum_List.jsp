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
	.card{
		align-items: center;
		margin: auto;
	}
</style>
<br>
<div class="card border-primary mb-3" style="max-width: 20rem;">
	<div class="card-title">미술관 목록</div>
</div>
<form>
	<table class="table table-hover">
		<tr class="table-primary">
			<th scope="row">No.</th>
			<th scope="row">미술관명</th>
			<th scope="row">주소</th>
			<th scope="row">전화번호</th>
			<th scope="row">휴무일</th>
			<th scope="row">개장시간</th>
			<th scope="row">폐장시간</th>
		</tr>
		<c:forEach var="mb" items="${lists }">
		<tr class="table-light">
			<Td>${mb.no }</Td>
			<Td><a href="detail.mu?no=${mb.no }">${mb.name }</a></Td>
			<Td>${mb.address }</Td>
			<Td>${mb.ph }</Td>
			<Td>${mb.offday }</Td>
			<Td>${mb.open }</Td>
			<Td>${mb.close }</Td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<center>
		<input type="button" value="등록하기" class="btn btn-primary" onclick="location.href='insert.mu'">
	</center>
</form>



<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>