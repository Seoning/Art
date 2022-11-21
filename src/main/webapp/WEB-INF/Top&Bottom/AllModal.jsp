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
													<div id="naver_id_login" style="text-align:center"><a href="${url}">
														<img width="223" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a></div>
														<br>    
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