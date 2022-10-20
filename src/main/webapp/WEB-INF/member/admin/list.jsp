<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Admin_Top.jsp" %>

<style>
	.table{
		margin: auto;
		width: 50%;
	}
	tr:first-child {
		text-align: center;
	}
	.card{
		align-items: center;
		margin: auto;
	}
</style>

<Br>

<div class="card border-primary mb-3" style="max-width: 20rem;">
	<div class="card-title">회원 목록</div>
</div>

<form>
	<table class="table table-hover">
		<tr class="table-primary">
			<th scope="row">NO.</th>
			<th scope="row">아이디</th>
			<th scope="row">이름</th>
			<th scope="row">연락처</th>
			<th scope="row">주소</th>
			<th scope="row">가입일</th>
			<th scope="row">수정</th>
			<th scope="row">삭제</th>
		</tr>
		
		<c:if test="${empty lists }">
			<tr class="table-light">
				<td colspan="8">등록된 회원이 없습니다.</td>
			</tr>
		</c:if>
		
		<c:forEach var="memb" items="${lists }">
			<tr class="table-light">
				<td colspan="">${memb.no }</td>
				<td colspan="">${memb.id }</td>
				<td colspan="">${memb.name }</td>
				<td colspan="">${memb.phone }</td>
				<td colspan="">${memb.address }</td>
				<td colspan="">
					<fmt:parseDate var="signup_day" value="${memb.signup_day }" pattern="yyyy-MM-dd"/>
					<fmt:formatDate value="${signup_day }" var="signup_day" pattern="yyyy-MM-dd"/>
					${signup_day}
				</td>
				<td><input type="button" value="수정" onclick="location.href='update.mem?no=${memb.no}'" class="btn btn-outline-success"></td>
				<td><input type="button" value="삭제" onclick="location.href='delete.mem?no=${memb.no}'" class="btn btn-outline-danger"></td>
			</tr>
		</c:forEach>
		
	</table>
</form>





<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>