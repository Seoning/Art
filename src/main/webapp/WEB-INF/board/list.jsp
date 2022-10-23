<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>
<style>
	.table {
		width: 50%;
		margin: auto;
	}
	#select{
		width: 150px;
	}
</style>
<br>
<form action="list.bd">

	<table class="table table-hover">
		<tr class="table-primary">
			<th scope="row" colspan="6" height="50px" style="vertical-align: middle; text-align: center;"><h5>Contact Us</h5></th>
		</tr>
		<tr class="table-primary">
			<th scope="row">No.</th>
			<th scope="row">작성자</th>
			<th scope="row">제목</th>
			<th scope="row">작성일</th>
			<th scope="row">댓글수</th>
			<th scope="row">조회수</th>
		</tr>
		<c:if test="${empty lists }">
			<tr class="table-light">
				<th scope="row" colspan="6">등록된 게시글이 없습니다.</th>
			</tr>
		</c:if>
		
		<c:if test="${not empty lists }">
			<c:forEach var="bb" items="${lists }">
				<tr class="table-light">
					<td>${bb.no }</td>
					<td>${bb.id }</td>
					<td><a href="detail.bd?no=${bb.no }" <c:if test="${bb.notice eq 1 }">style="color:green;"</c:if>>${bb.title }</a></td>
					<fmt:parseDate var="cday" value="${bb.cday }" pattern="yyyy-MM-dd HH:mm"/>
					<fmt:formatDate var="cday" value="${cday }" pattern="yyyy-MM-dd HH:mm"/>
					<td>${cday }</td>
					<td>${bb.reply }</td>
					<td>${bb.readcnt }</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<br>
	<center>
	<select name="whatColumn" class="form-select" id="select" style="display: inline-block;">
		<option value="">전체검색
		<option value="title">글제목
		<option value="id">작성자
	</select>
	<input type="text" name="keyword" class="form-control col-xs-3" style="display: inline-block;">
	<input type="submit" value="검색" class="btn btn-primary">
</center>
</form>
<Br>
<center>
	${pageInfo.pagingHtml }
</center>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>