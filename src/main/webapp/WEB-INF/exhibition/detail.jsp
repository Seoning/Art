<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>
<style type="text/css">
	#card{
		width:1000px;
		margin: auto;
	}
</style>

<br><br>

 <div class="card bg-light mb-3" id="card">
    <div class="card-header">
		<fmt:parseDate var="startday" value="${eb.startday }" pattern="yyyy-MM-dd"/>
		<fmt:formatDate value="${startday }" var="startday" pattern="yyyy-MM-dd"/>
		${startday }
		&nbsp;
		-
		&nbsp;
		<fmt:parseDate var="endday" value="${eb.endday }" pattern="yyyy-MM-dd"/>
		<fmt:formatDate value="${endday }" var="endday" pattern="yyyy-MM-dd"/>
		${endday }
	</div>
	 	<table>
	 		<tr>
	 			<td>
				    <div class="card-body">
				      <h4 class="card-title">${eb.title }</h4>
				      <img src="<%=request.getContextPath()%>/resources/img/exhib/${eb.img}" width=400>
				      
				    </div>
	 			</td>
	 			<td>
			    <div class="card-body">
			    	<p class="card-text">
			      		<strong>작가명</strong> : ${eb.painter }<br>
			      		<strong>전시회장</strong>  : ${eb.museum }<br>
			      		<strong>위치</strong>  : ${eb.place }<br>
			      		<strong>전시소개</strong>  : ${eb.content }<br>
			      		<strong>총 작품 수</strong>  : ${eb.count }<br>
			      		<strong>관람료</strong>  : <c:if test="${eb.price == 0}">
									관람료 무료
								</c:if>
								<c:if test="${eb.price != 0}">
									${eb.price}
								</c:if><br>
						<strong>후원기관</strong>  : ${eb.sponsor }
			      	</p>
			    </div>
	 			</td>
	 		</tr>
	 	</table>
</div>
<br>
<center>
	<input type="button" value="이전으로" onclick="history.back()" class="btn btn-secondary">
	<input type="button" value="예약하기" onclick="location.href='reservation.re?no=${eb.no}'" class="btn btn-primary">
</center>	

<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>