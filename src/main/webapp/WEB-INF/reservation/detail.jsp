<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>
<style>
	#card{
		width: 40%;
	}
</style>
<br>
 <div class="card border-primary mb-3" style="max-width: 100rem;" id="card">
   <div class="card-header">예약 정보 상세보기</div>
   <div class="card-body">
     <h4 class="card-title">전시회 예약 정보</h4>
     <p class="card-text">
     	<table class="table table-hover">
     		<tr>
     			<th scope="row" class="table-primary" colspan="2">예약 정보 상세보기</th>
     		</tr>
     		
     		<tr>
	            <th scope="row" class="table-primary">전시회명</th>
	     		<td>${rb.title }</td>
     		</tr>
     		<tr>
	            <th scope="row" class="table-primary">미술관명</th>
	     		<td>${eb.museum }</td>
     		</tr>
     		<tr>
	            <th scope="row" class="table-primary">관람일</th>
	     		<td>${rb.day}</td>
     		</tr>
     		<tr>
	            <th scope="row" class="table-primary">관람인원</th>
	     		<td>${rb.count}</td>
     		</tr>
     		<tr>
	            <th scope="row" class="table-primary">관람료</th>
	     		<td>${rb.price}</td>
     		</tr>
     		<tr>
	            <th scope="row" class="table-primary">결제방법</th>
	     		<td>${rb.pay}</td>
     		</tr>
     	</table>
     </p>
   </div>
   <center>
 	<input type="button" value="예약취소" onclick="location.href='delete.re?no=${rb.no}&mno=${login_Info.no }'" class="btn btn-primary" style="margin-bottom: 10px; margin-top: -15px;">
   </center>
 </div>



<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>