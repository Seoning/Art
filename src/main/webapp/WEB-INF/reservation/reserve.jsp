<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>
<style>
	#re{
		align-items: center;
		margin-left: 400px;
	}
	#noLogin{
		height: 400px;
	}
	#already{
		height: 400px;
		width : 540px;
	}
	#reserve{
		height: 400px;
	}
	.col-xs-2{
		width:40px;
	}
	.col-xs-3{
		width:250px;
	}
	#but{
		width:150px;
	}
	#table{
		font-size: 12px;
	}
</style>

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#plus').click(function(){
			var count = $('input[name="count"]').val();
			//alert(count);
			if(isNaN(parseInt(count))){
				count = 0;
			}
			location.href="reservation.re?count="+count+"&no=${eb.no}&day=${day}";
		});
		
		$('#minus').click(function(){
			var count = $('input[name="count"]').val();
			//alert(count);
			location.href="minus.re?count="+count+"&no=${eb.no}&day=${day}";
		});
	
		
	});
</script>
<br><Br>

<!-- No Sign In -->
<div class="row" id="re">
   <div class="col-lg-4">
      <div class="bs-component">
      
      <c:if test="${empty login_Info}">
      
         <div class="card border-primary mb-3" id="nologin">
          <div class="card-header">회원인증</div>
          <div class="card-body">
            <h4 class="card-title">로그인</h4><br>
            <form action="login.mem" name="login">
            <input type="hidden" name="eno" value="${eb.no }">
            <input type="hidden" name="count" value="${eb.count}">
	            아이디&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	            <input type="text" placeholder="아이디를 입력하세요" name="id" class="form-control col-xs-3" style="display: inline-block;"><br><br>
	           	비밀번호&nbsp;&nbsp;:&nbsp;&nbsp;<input type="password" name="pw" placeholder="비밀번호를 입력하세요" class="form-control col-xs-3" style="display: inline-block;"><br><br>
	            <br>
	            <center>
	            	<a class="portfolio-link btn btn-primary text-uppercase" data-bs-toggle="modal" href="#findId">아이디/비밀번호 찾기</a>
	            	<input type="submit" value="로그인" id="bt" class="btn btn-primary">
	            	<input type="button" value="회원가입" class="btn btn-outline-primary" onclick="location.href='signUp.mem'">
	            </center>
   				</form>
            	<br>
          </div>
        </div>  
        
      </c:if> 
      
<!--My Reservation List -->       
      <c:if test="${not empty login_Info}">
      
        <div class="card border-primary mb-3" id="already"> <!-- scroll -->
          <div class="card-header">예약내역</div>
          <div class="card-body">
            <h4 class="card-title">나의 예약</h4><br>
            	<table class="table table-hover" id="table">
					<tr class="table-primary">
						<th scope="row">No.</th>
						<th scope="row">전시회명</th>
						<th scope="row">관람일</th>
						<th scope="row">인원수</th>
						<th scope="row">가격</th>
					</tr>
					<c:forEach var="rb" items="${lists }">
					<tr class="table-light">
						<Td>${rb.no }</Td>
						<Td>${rb.title }</Td>
						<Td>${rb.day }</Td>
						<Td>${rb.count }</Td>
						<Td>${rb.price }</Td>
					</tr>
					</c:forEach>
            	</table>
            <br>
          </div>
        </div>
        
      </c:if> 
          </div>
          </div>

	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#submit').click(function(){
				if($('input[id="id"]').val()==""){
					alert('비회원은 예약이 불가능합니다.');
					return false;
				}
				//pay valid check
			});
		});
	</script>

<!-- Reservation -->
   <div class="col-lg-4">
      <div class="bs-component">
      <form action="payfor.re">
      	<input type="hidden" name="title" value="${eb.title }">
      	<input type="hidden" name="museum" value="${eb.museum }">
      	<input type="hidden" name="price" value="${eb.price }">
      	<input type="hidden" name="id" id="id" value="${login_Info.id}">
      	<input type="hidden" name="no" value="${login_Info.no}">
      	
         <div class="card border-primary mb-3"  id="reserve">
          <div class="card-header">전시 관람 예약</div>
          <div class="card-body">
            <h4 class="card-title">${eb.title }</h4><br>
            <strong>관람일</strong>&nbsp;:&nbsp;
            <input type="date" name="day" value="${day }" min="${day }" class="form-control col-xs-3"  style="display: inline-block;">
 			<br><br>
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
 			<br><br>
            <strong>결제방법</strong>&nbsp;:&nbsp;
 			<input type="radio" name="pay" value="card" id="pay" class="form-check-input">신용카드  
 			<input type="radio" name="pay" value="account" id="pay" class="form-check-input">무통장입금  
        	<br>
            <center>
        		<input type="submit" value="결제하기" class="btn btn-primary" style="margin-top: 5px;" id="submit">
            </center>
          </div>
        </div>
      </form>
        
    </div>
  </div>  
</div>


<br><br>

<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>