<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Admin_Top.jsp" %>
ex_Detail.jsp<Br>

<style>
	.table {
	width: 50%;
	margin: auto;
	}
	#title {
		text-align: center;
	}
	th{
		font-weight: bolder;
	}
</style>

<form action="exupdate.ex" method="get">
	<input type="hidden" name="no" value="${eb.no}">
	<table class="table table-hover" id="title">
		<tr class="table-primary">
			<th scope="row" colspan="2">전시회 상세보기</th>
		</tr>
		
		<tr class="table-light">
			<th scope="row">전시명</th>
			<td>${eb.title }</td>
		</tr>
		<tr class="table-light">
			<th scope="row">작가명</th>
			<td>${eb.painter }</td>
		</tr>
		<tr class="table-light">
			<th scope="row">전시회장</th>
			<td>${eb.museum }</td>
		</tr>
		<tr class="table-light">
			<th scope="row">위치</th>
			<td>${eb.place }</td>
		</tr>
		<tr class="table-light">
			<th scope="row">시작일</th>
			<td>
				<fmt:parseDate var="startday" value="${eb.startday }" pattern="yyyy-MM-dd"/>
				<fmt:formatDate value="${startday }" var="startday" pattern="yyyy-MM-dd"/>
				${startday }
			</td>
		</tr>
		<tr class="table-light">
			<th scope="row">종영일</th>
			<td>
				<fmt:parseDate var="endday" value="${eb.endday }" pattern="yyyy-MM-dd"/>
				<fmt:formatDate value="${endday }" var="endday" pattern="yyyy-MM-dd"/>
				${endday }
			</td>
		</tr>
		<tr class="table-light">
			<th scope="row">전시소개</th>
			<td>${eb.content }</td>
		</tr>
		<tr class="table-light">
			<th scope="row">후원기관</th>
			<td>${eb.sponsor }</td>
		</tr>
		<tr class="table-light">
			<th scope="row">관람료</th>
			<td>
			<c:if test="${eb.price == 0}">
				관람료 무료
			</c:if>
			<c:if test="${eb.price != 0}">
				${eb.price}
			</c:if>
			</td>
		</tr>
		<tr class="table-light">
			<th scope="row">총 작품 수</th>
			<td>${eb.count }개</td>
		</tr>
		<tr class="table-light">
			<th scope="row">첨부사진</th>
			<td><img src="<%=request.getContextPath()%>/resources/img/exhib/${eb.img}" width=250></td>
		</tr>
		
	</table>
	<br>
	<center>
		<div>		
			<input type="button" value="목록보기" class="btn btn-secondary" onclick="location.href='exlist.ex'">
			<input type="submit" value="수정하기" class="btn btn-primary">
			<input type="button" value="삭제하기" class="btn btn-danger" onclick="location.href='exdelete.ex?no=${eb.no}'">
		</div>
	</center>
	
</form>


<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>