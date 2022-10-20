<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>
<style>
	.card{
		height: 1000px;
		margin:auto;
	}
	.col-xs-3{
		width:250px;
	}
	.card-body{
		padding: 30px;
	}
	#msg{
		font-size: 10.5pt;
	}
	.err{
		color: red;
		font-size: 10.5pt;
	}
	#repwmsg{
		font-size: 10.5pt;
		color : red;	
	}
</style>

<script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		okay = false;
		//alert(1);
		$('#button-addon2').click(function(){
			//alert(2);
			var id = $('input[name="id"]').val();
			//alert(id);
			
			if(id == ""){
				alert('아이디를 입력하세요');
				return;
			}
			else{
				$.ajax({
					url:"idDuple.mem",
					data : {id},
					success : function(data){
						if($.trim(data) == "Y"){
							$('#msg').html("사용가능한 아이디입니다.");
							$('#msg').css("color","green");
							okay = true;
						}
						else{
							$('#msg').html("사용 불가능한 아이디입니다.");
							$('#msg').css("color","red");
							okay = false;
						}
						
					}
					
					
				}); //ajax
			}
		});//click
		
		$('#submit').click(function(){
			if(okay == false){
				alert('아이디 중복체크가 누락되었습니다.');
				$('input[name="id"]').focus();
				offset = $('input[name="id"]').offset();
				$('html,body').animate({scrollTop:offset.top},200);
				return false;
			}
			else{
				return true;
			}
			
			
		}); //submit
		
		$('input[name="repw"]').blur(function(){
			var pw = $('input[name="pw"]').val();
			var repw = $('input[name="repw"]').val();
/* 			alert(pw);
			alert(repw); */
			if(pw != repw){
				$('#repwmsg').html("비밀번호가 일치하지 않습니다");
				$('#repwmsg').show();
				return false;
			}
			else{
				return true;
			}
			
		});
		
		$('input[name="repw"]').keydown(function(){
			$('#repwmsg').css("display","none");
		})
		
		
	});

	
</script>


<br>
<div id="row">
	 <div class="bs-component">
	   <div class="card border-primary mb-3" style="max-width: 50rem;">
	     <div class="card-header">Sign up for Art_See</div>
		<form:form action="signUp.mem" method="post" class="form-group row" commandName="memberBean">
	       <div class="card-body">
	           <h4 class="card-title">회원가입</h4>
		         <div class="bs-docs-section">
	              <div class="form-group">
	                <label class="form-label mt-4">아이디</label>
	                <div class="form-group">
	                  <div class="input-group mb-3">
	                    <input type="text" class="form-control" placeholder="6~16자 이내로 입력하세요" value="${memberBean.id }"
	                    aria-label="" name="id" aria-describedby="button-addon2">
	                    <button class="btn btn-primary" type="button" id="button-addon2">중복확인</button>
	                  </div>
	                  	<div id="msg"></div>
	                  	<form:errors cssClass="err" path="id" />
	                </div>
	              </div>
	              
	              <div class="form-group">
	                <label class="form-label mt-4">비밀번호</label>
	                <input type="password" class="form-control" name="pw" value="${memberBean.pw }">
	                <form:errors cssClass="err" path="pw" />
	              </div>
	
	              <div class="form-group">
	                <label class="form-label mt-4">비밀번호 확인</label>
	                <input type="password" class="form-control" name="repw" value="${memberBean.repw }">
	                <div id="repwmsg"></div>
	                <form:errors cssClass="err" path="repw" />
	              </div>
	              
	               <div class="form-group">
	                <label class="col-form-label mt-4" for="inputDefault">이름</label>
	                <input type="text" class="form-control" placeholder="ex) 홍길동" id="inputDefault" name="name" value="${memberBean.name }">
	                <form:errors cssClass="err" path="name" />
	              </div>
	              
	               <div class="form-group">
	                <label class="col-form-label mt-4" for="phone">연락처</label>
	                <input type="text" class="form-control" placeholder="ex) 01012345678" id="phone"  name="phone" value="${memberBean.phone }">
	              	<small id="phoneHelp" class="form-text text-muted">'-' 제외 숫자만 입력하세요</small>
	              	<form:errors cssClass="err" path="phone" />
	              </div>
	              
	              
	              <div class="form-group">
	                <label class="col-form-label mt-4" for="inputDefault">주소</label><br>
					<input type="text" id="address"  name="address" placeholder="우편번호" class="form-control col-xs-3" style="display: inline-block;">
					<input type="button" onclick="sample6_execDaumPostcode()"  value="우편번호 찾기" class="btn btn-primary" style="display: inline-block;"><br>
					<input type="text" id="sample6_address"  name="sample6_address" placeholder="주소" class="form-control col-xs-3" style="display: inline-block;"><br>
					<input type="text" id="sample6_detailAddress"  name="sample6_detailAddress" placeholder="상세주소" class="form-control col-xs-3" style="display: inline-block;">
					<input type="text" id="sample6_extraAddress"  name="sample6_extraAddress" placeholder="참고항목" class="form-control col-xs-3" style="display: inline-block;">
					<form:errors cssClass="err" path="address" />
					<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<script>
					    function sample6_execDaumPostcode() {
					        new daum.Postcode({
					            oncomplete: function(data) {
					                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					
					                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
					                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					                var addr = ''; // 주소 변수
					                var extraAddr = ''; // 참고항목 변수
					
					                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					                    addr = data.roadAddress;
					                } else { // 사용자가 지번 주소를 선택했을 경우(J)
					                    addr = data.jibunAddress;
					                }
					
					                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					                if(data.userSelectedType === 'R'){
					                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
					                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
					                        extraAddr += data.bname;
					                    }
					                    // 건물명이 있고, 공동주택일 경우 추가한다.
					                    if(data.buildingName !== '' && data.apartment === 'Y'){
					                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					                    }
					                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					                    if(extraAddr !== ''){
					                        extraAddr = ' (' + extraAddr + ')';
					                    }
					                    // 조합된 참고항목을 해당 필드에 넣는다.
					                    document.getElementById("sample6_extraAddress").value = extraAddr;
					                
					                } else {
					                    document.getElementById("sample6_extraAddress").value = '';
					                }
					
					                // 우편번호와 주소 정보를 해당 필드에 넣는다.
					                document.getElementById('address').value = data.zonecode;
					                document.getElementById("sample6_address").value = addr;
					                // 커서를 상세주소 필드로 이동한다.
					                document.getElementById("sample6_detailAddress").focus();
					            }
					        }).open();
					    }
					</script>
	              </div>
	            </div>
	          </div> 		
		           
		   </div>
		<center>
			<input type="submit" value="가입하기" class="btn btn-primary" id="submit">
		</center>
		</form:form>
	</div>
</div>



<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>