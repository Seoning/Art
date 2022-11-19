<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

         <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
         <script type="text/javascript">
        	$(document).ready(function(){
        		$('#bt').click(function(){
        			//alert(1);
        			if($('input[name="id"]').val()==""){
        				alert('아이디를 입력하세요');
        				return false;
        			}
        			else if($('input[name="pw"]').val()==""){
        				alert('비밀번호를 입력하세요');
        				return false;
        			}
        		});
        	});
        </script>
  

         <div class="portfolio-modal modal fade" id="login" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="<%=request.getContextPath() %>/resources/startbootstrap-agency-gh-pages/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase"><img class="img-fluid d-block mx-auto logo" src="<%=request.getContextPath() %>/resources/img/Art_See.png" alt="..." /></h2>
                                    <p class="item-intro text-muted"><img class="img-fluid d-block mx-auto login" src="<%=request.getContextPath() %>/resources/img/login.png"alt="..." /></p>
                   
                                    <div class="row" id="row">
									   <div class="col-lg-4">
									      <div class="bs-component">
									      
									         <div class="card border-primary mb-3" id="res">
									          <div class="card-header">회원인증</div>
									          <div class="card-body">
									            <h4 class="card-title">로그인</h4><br>
									            <form action="login.mem" name="login">
										            아이디&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										            <input type="text" placeholder="아이디를 입력하세요" name="id" class="form-control col-xs-3" style="display: inline-block;"><br><br>
										           	비밀번호&nbsp;&nbsp;:&nbsp;&nbsp;<input type="password" name="pw" placeholder="비밀번호를 입력하세요" class="form-control col-xs-3" style="display: inline-block;"><br><br>
										            <br>
										            <center>
										                  
        <ul>
	<li style="list-style: none; margin-bottom: -30px; margin-top: -30px;">
      <!-- 아래와같이 아이디를 꼭 써준다. -->
      <a id="naverIdLogin_loginButton" href="javascript:void(0)">
          <span><img src="resources/2021_Login_with_naver_guidelines_Kr/btnW_축약형.png" width="130px;"></span>
      </a>
	</li>

</ul>
						
						<!-- 네이버 스크립트 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
<script>

var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "X6xuBs89_nezKyhqsYUn", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost:8080/ex/home.mu", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup: false,
			callbackHandle: true
		}
	);	

naverLogin.init();

window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {
		if (status) {
			var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
    		
			console.log(naverLogin.user); 
			//alert(naverLogin.user.email);
			
			document.getElementById("naverLogin").append(naverLogin.user.name+"님 안녕하세요");
			$("#naverLogout").append('<img src="resources/2021_Login_with_naver_guidelines_Kr/btnW_로그아웃.png" width="130px;">');
			$('#memberLogin').remove();
		
			
            if( email == undefined || email == null) {
				alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
				naverLogin.reprompt();
				return;
			}
		} else {
			console.log("callback 처리에 실패하였습니다.");
		}
	});
});


var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
    testPopUp.close();
}

function naverLogout() {
	openPopUp();
	$('#naverLogout').empty();
	$('#naverLogin').empty();
	$('#centerButton').append('<a class="portfolio-link btn btn-primary btn-xl text-uppercase" id="memberLogin" data-bs-toggle="modal" href="#login">Login</a>');
	//location.href="https://nid.naver.com/oauth2.0/token?grant_type=delete&client_id=X6xuBs89_nezKyhqsYUn&client_secret=5kUXCamrkA&access_token=AAAAOkHzW6xf_mqP_zFbuLAT3VgMUwGMlKSw5d4bPus5aASvF4P-sABtzlaz6oYIQDWtV_pUd13un8H32Vom5a6nfAQ&service_provider=NAVER";
	
}
</script>				            
										            	<a class="portfolio-link btn btn-primary text-uppercase" data-bs-toggle="modal" href="#findId">아이디/비밀번호 찾기</a>
										            	<input type="submit" value="로그인" id="bt" class="btn btn-primary">
										            	<input type="button" value="회원가입" class="btn btn-outline-primary" onclick="location.href='signUp.mem'">
										            </center>
									   				</form>
									            	<br>
									          </div>
									        </div>  
							          	</div>
						          	</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </div>
     
        <div class="portfolio-modal modal fade" id="findId" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="<%=request.getContextPath() %>/resources/startbootstrap-agency-gh-pages/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase"><img class="img-fluid d-block mx-auto logo" src="<%=request.getContextPath() %>/resources/img/Art_See.png" alt="..." /></h2>
                                    <p class="item-intro text-muted"><img class="img-fluid d-block mx-auto find" src="<%=request.getContextPath() %>/resources/img/findid.png" alt="..." width="400px"/></p>
                   
                                    <div class="row" id="row">
									   <div class="col-lg-4">
									      <div class="bs-component">
									      
									         <div class="card border-primary mb-3" id="res">
									          <div class="card-header">회원인증</div>
									          <div class="card-body">
									            <h4 class="card-title">아이디/비밀번호 찾기</h4><br>
									            <form action="findId.mem" name="findId">
										            성함&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										            <input type="text" placeholder="성함을 입력하세요" name="name" class="form-control col-xs-3" style="display: inline-block;"><br><br>
										           	핸드폰번호&nbsp;&nbsp;:&nbsp;&nbsp;<input type="text" name="phone" placeholder="-를 제외하고 입력하세요" class="form-control col-xs-3" style="display: inline-block;"><br><br>
										            <br>
										            <center>
										            	<input type="submit" value="아이디/비밀번호 찾기" id="bt" class="btn btn-primary">
										            	<input type="button" value="회원가입" id="bt" class="btn btn-outline-primary" onclick="location.href='signUp.mem'">
										            </center>
									   				</form>
									            	<br>
									          </div>
									        </div>  
							          	</div>
						          	</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </div>