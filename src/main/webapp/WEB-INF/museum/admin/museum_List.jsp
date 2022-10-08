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
museum_List.jsp<br>
<form>
	<table class="table table-hover">
		<tr class="table-secondary" id="title">
			<th scope="row" colspan="7">미술관 목록보기</th>
		</tr>
		<tr class="table-secondary">
			<th scope="row">No.</th>
			<th scope="row">미술관명</th>
			<th scope="row">주소</th>
			<th scope="row">전화번호</th>
			<th scope="row">휴무일</th>
			<th scope="row">개장시간</th>
			<th scope="row">폐장시간</th>
		</tr>
		<c:forEach var="mb" items="${lists }">
		<tr>
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
</form>



<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>