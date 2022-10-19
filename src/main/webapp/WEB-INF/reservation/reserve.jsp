<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>
<style>
	#row{
		margin: auto;
		align-items: center;
		margin-left: 400px;
	}
	.card{
		height: 350px;
	}
	.col-xs-2{
		width:40px;
	}
	.col-xs-3{
		width:250px;
	}
	#bt{
		width:150px;
	}
	
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#plus').click(function(){
			var count = $('input[name="count"]').val();
			alert(count);
			if(isNaN(parseInt(count))){
				count = 0;
			}
			location.href="reservation.re?count="+count+"&no=${eb.no}&day=${day}";
		});
		
		$('#minus').click(function(){
			var count = $('input[name="count"]').val();
			alert(count);
			location.href="minus.re?count="+count+"&no=${eb.no}&day=${day}";
		});
		
	});
	
	
</script>
<br><Br>
<div class="row" id="row">
   <div class="col-lg-4">
      <div class="bs-component">
      
         <div class="card border-primary mb-3">
          <div class="card-header">회원인증</div>
          <div class="card-body">
            <h4 class="card-title">로그인</h4><br>
            <form action=""></form>
            아이디&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" placeholder="아이디를 입력하세요" class="form-control col-xs-3" style="display: inline-block;"><br><br>
           	비밀번호&nbsp;&nbsp;:&nbsp;&nbsp;<input type="text" placeholder="비밀번호를 입력하세요" class="form-control col-xs-3" style="display: inline-block;"><br><br>
            
            <br>
            <center>
            	<input type="submit" value="로그인" id="bt" class="btn btn-primary">
            </center>
            
            <br>
          </div>
        </div>
        
          </div>
          </div>

   <div class="col-lg-4">
      <div class="bs-component">
      <form>
         <div class="card border-primary mb-3">
          <div class="card-header">전시 관람 예약</div>
          <div class="card-body">
            <h4 class="card-title">${eb.title }</h4><br>
            <strong>관람일</strong>&nbsp;:&nbsp;
            <input type="date" name="day" value="${day }" min="${day }" class="form-control"><br><br>
 			<strong>관람인원</strong>&nbsp;:&nbsp;
 			<input type="button" value="-" id="minus" class="btn btn-primary">   
 			
 			<input type="tel" class="form-control col-xs-2" readonly="readonly" value="${cnt }" name="count" style="display: inline-block;">
 			
 			<input type="button" value="+" id="plus" class="btn btn-primary">            
 			<br><br>
 			<strong>관람료</strong>&nbsp;:&nbsp;
 			<font color="red">
 			<c:if test="${eb.price == 0 }">
 				무료
 			</c:if>
 			<c:if test="${eb.price > 0 }">
 				${eb.price }₩
 			</c:if>
 			</font>
            
          </div>
        </div>
      </form>
        
    </div>
  </div>
  
  
</div>
 
   
   <!-- <div class="col-lg-4">
      <div class="bs-component">
      
         <div class="card border-primary mb-3" id="res">
          <div class="card-header">회원인증</div>
          <div class="card-body">
            <h4 class="card-title">나의 예매내역 확인</h4><br>
            <form action=""></form>
            <input type="text" placeholder="휴대폰번호 '-' 빼고 숫자 입력" class="form-control col-xs-3" style="display: inline-block;">&nbsp;<input type="button" id="bt" value="인증번호 요청" class="btn btn-primary"><br><br>
            <input type="text" placeholder="인증번호 입력" class="form-control col-xs-3" style="display: inline-block;">&nbsp;<input type="button" value="인증하기" id="bt" class="btn btn-primary"><br><br>
            <input type="text" placeholder="이름을 입력하세요" class="form-control col-xs-3" style="display: inline-block;"><br><br>
            
            <center>
            	<input type="submit" value="로그인" id="bt" class="btn btn-primary">
            </center>
            
            
          </div>
        </div>
          </div>
          </div> -->
        
        
 

        <!--  <div class="card border-primary mb-3">
          <div class="card-header">결제하기</div>
          <div class="card-body">
            <h4 class="card-title">결제 방식을 선택하세요</h4><br>
            <input type="radio" value="card">카드&nbsp;&nbsp;
            <input type="radio" value="bank">무통장입금&nbsp;&nbsp;
            <input type="radio" value="kakao">카카오페이&nbsp;&nbsp;
            <input type="radio" value="phone">핸드폰결제&nbsp;&nbsp;<br>
          </div>
        </div> -->

<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>