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
  <!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-{SDK-최신버전}.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			//alert(1);
			$('#import').click(function(){
				//alert(2);
				payment();
			});
		})
		
		function payment(data){
			IMP.init('imp51644542');
			IMP.request_pay({
				pg : "kakaopay.TC0ONETIME",
				pay_method: "card",
				merchant_uid : "qawsedrftg",
				name : "도서",
				amount:13700,
				buyer_email : "abc12@naver.com",
				buyer_email : "홍길동",
				buyer_tel : "01096599604"
			}, function(rsp){
				if(rsp.success){
					alert("완료 -> imp_uid:"+rsp.imp_uid+"/ merchant_uid(order key) :"+rsp.merchant_uid);
					
				} else{
					alert("실패 : 코드("+rsp.error_code+")/메세지("+rsp.error_msg+")");
				}
			});
		}
		
	</script>
	<script>    
	$("#check_module").click(function () {        
		var IMP = window.IMP; 
		// 생략가능        
		IMP.init('imp51644542');         
		// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용        
		// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드        
		IMP.request_pay({            
			pg: 'kakaopay', // version 1.1.0부터 지원.            
			/*                 
			'kakao':카카오페이,                 
			html5_inicis':이니시스(웹표준결제)                    
			'nice':나이스페이                    
			'jtnet':제이티넷                    
			'uplus':LG유플러스                    
			'danal':다날                    
			'payco':페이코                    
			'syrup':시럽페이                    
			'paypal':페이팔                
			*/            
			pay_method: 'card',            
			/*                 
			'samsung':삼성페이,                 
			'card':신용카드,                 
			'trans':실시간계좌이체,                
			'vbank':가상계좌,                
			'phone':휴대폰소액결제             
			*/            
			merchant_uid: 'merchant_' + new Date().getTime(),           
			/*                 
			merchant_uid에 경우                
			https://docs.iamport.kr/implementation/payment                
			위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.                
			참고하세요.                 
			나중에 포스팅 해볼게요.             
			*/            
			name: '주문명:결제테스트',            
			//결제창에서 보여질 이름            
			amount: 1000,             
			//가격             
			buyer_email: 'iamport@siot.do',            
			buyer_name: '구매자이름',            
			buyer_tel: '010-1234-5678',            
			buyer_addr: '서울특별시 강남구 삼성동',            
			buyer_postcode: '123-456',            
			m_redirect_url: 'https://www.yourdomain.com/payments/complete'            
			/*                  
			모바일 결제시,                
			결제가 끝나고 랜딩되는 URL을 지정                 
			(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)                 
			*/        
			}, function (rsp) {            
				console.log(rsp);            
				if (rsp.success) {                
					var msg = '결제가 완료되었습니다.';                
					msg += '고유ID : ' + rsp.imp_uid;                
					msg += '상점 거래ID : ' + rsp.merchant_uid;                
					msg += '결제 금액 : ' + rsp.paid_amount;                
					msg += '카드 승인번호 : ' + rsp.apply_num;            
					} else {                
						var msg = '결제에 실패하였습니다.';                
						msg += '에러내용 : ' + rsp.error_msg;            
						}            
				alert(msg);        
				});    
		});
	</script>

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
        		<input type="button" value="결제하기" class="btn btn-primary" style="margin-top: 5px;" id="check_module">
            </center>
          </div>
        </div>
      </form>
        
    </div>
  </div>  
</div>


<br><br>

<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>