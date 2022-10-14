<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Admin_Top.jsp" %>
<style>
	.table {
		width: 70%;
		margin: auto;
		}
	#title {
		text-align: center;
		}
</style>
museum_Detail.jsp<br>
<%
String url = request.getContextPath()+"/resources/img/museumImg/";
%>
<form>
	<table class="table table-hover">
		<tr class="table-primary"r id="title">
			<th>번호</th>
			<th>미술관명</th>
			<th>미술관 사진</th>
			<th>주소</th>
			<th>전화번호</th>
			<th>총 계층</th>
			<th>휴무일</th>
			<th>개장시간</th>
			<th>폐장시간</th>
			<th>야간개장일</th>
			<th>키워드</th>
		</tr>
		<tr class="table-light">
			<td>${mb.no }</td>
			<td>${mb.name }</td>
			<td><img src="<%=url%>${mb.img }" width="200"></td>
			<td>${mb.address }</td>
			<td>${mb.ph }</td>
			<td>${mb.totalfloor }</td>
			<td>${mb.offday }</td>
			<td>${mb.open }</td>
			<td>${mb.close }</td>
			<td>${mb.nightopen }</td>
			<td>${mb.opt }</td>
		</tr>
	</table>
	<br>
	<center>
		<input type="button" value="목록보기" onclick="location.href='list.mu'" class="btn btn-secondary">
		<input type="button" value="수정하기" class="btn btn-primary" onclick="location.href='update.mu?no=${mb.no}'">
		<input type="button" value="삭제하기" class="btn btn-danger" onclick="location.href='delete.mu?no=${mb.no}'">
	</center>
</form>



<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>