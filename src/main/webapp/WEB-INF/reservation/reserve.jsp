<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>
<style>
	#row{
		margin: auto;
		align-items: center;
		margin-left: 400px;
	}
</style>
<br><Br>
<div class="row" id="row">
   <div class="col-lg-4">
      <div class="bs-component">
      
         <div class="card border-primary mb-3">
          <div class="card-header">전시 관람 예약</div>
          <div class="card-body">
            <h4 class="card-title">${eb.title }</h4><br>
            <strong>관람일</strong> :&nbsp;<input type="date" name="day"><br><br>
 			<strong>관람인원</strong> :&nbsp;<select name="count">
 				<c:forEach var="i" begin="1" end="10">
	 				<option value="${i }">${i }명</option>
 				</c:forEach>
 			</select><br><br>
 			<strong>관람료</strong> :&nbsp;
 			<input type="tel" readonly="readonly">            
 			<input type="button" class="plus" onclick="javascript:plus(2000, '0')" >            
 			<input type="button" class="minus" onclick="javascript:minus(2000, '0')" >       
            <p class="card-text"></p>
          </div>
        </div>
        
    </div>
  </div>
   <div class="col-lg-4">
      <div class="bs-component">
      
         <div class="card border-primary mb-3">
          <div class="card-header">Header</div>
          <div class="card-body">
            <h4 class="card-title">Secondary card title</h4>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
        
    </div>
  </div>
</div>


<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>