<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/Top&Bottom/Admin_Top.jsp" %>
<style>
	.table {
		width: 60%;
		margin: auto;
		}
	#select{
		width: 150px;
	}
	.form-group{
		margin: auto;
	}
</style>

<br>

<form action="A_list.re">  
<center>
	<select name="whatColumn" class="form-select" id="select" style="display: inline-block;">
		<option value="">전체검색
		<option value="title">전시회명
		<option value="id">아이디
	</select>
	<input type="text" name="keyword" class="form-control col-xs-3" style="display: inline-block;">
	<input type="submit" value="검색" class="btn btn-primary">
</center>
<br>
	<table class="table table-hover">
		<tr class="table-primary">
			<th scope="row">No.</th>
			<th scope="row">회원아이디</th>
			<th scope="row">전시회명</th>
			<th scope="row">관람일</th>
			<th scope="row">관람인원</th>
			<th scope="row">관람료</th>
			<th scope="row">결제방법</th>
		</tr>
		<c:if test="${empty lists }">
		<tr class="table-light">
			<td colspan="7">예매내역이 없습니다.</td>
		</tr>
		</c:if>
		
		<c:if test="${not empty lists }">
			<c:forEach var="rb" items="${lists }">
				<tr>
					<td>${rb.no }</td>
					<td>${rb.id }</td>
					<td>${rb.title }</td>
					<td>${rb.day }</td>
					<td>${rb.count }</td>
					<td>${rb.price }</td>
					<td>${rb.pay }</td>
				<tr>
			</c:forEach>
		
		</c:if>
		
	</table>
</form>
<br>
<center>
	${pageInfo.pagingHtml }
</center>


<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>