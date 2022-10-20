<%@page import="member.model.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <%@include file="/WEB-INF/common/common.jsp" %>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Art-See</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/startbootstrap-agency-gh-pages/css/styles.css" rel="stylesheet" />
        
        <style type="text/css">
        	.masthead{
        		background-image: url("./../../resources/img/국립현대미술관-청주_미술로-세계로_전시-전경-01.jpg"); 
        	}
        	.portfolio-caption{
        		width:374px;
        	}
        	.img-fluid{
        		 width:374px;
        		 height:247px; 
        	}
        	.portfolio-item{
        		width:374px;
        	}
        	#eb_img{
        		width:500px;
        	}
        	.card{
        		width:400px;
        		margin: auto;
        	}
        	.login{
        		width:150px;
        		height:70px;
        	}
        	.logo{
        		width:400px;
        		height:160px;
        	}
        	#res{
        		margin-left:80%;
        	}
        	.col-xs-3{
        		width:250px;
        	}
        </style>
    <script type="text/javascript">
    	
    </script>    
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="home.mu"><img id="img" src="<%=request.getContextPath() %>/resources/img/Art_See.png" width="150" alt="..."/></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <!-- <li class="nav-item"><a class="nav-link" href="#services">Services</a></li> -->
                        <li class="nav-item"><a class="nav-link" href="#museum">Museum</a></li>
                        <li class="nav-item"><a class="nav-link" href="#about">Exhibition</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                    	<c:if test="${login_Info.id ne null }">
	                    	<li class="nav-item">
	                    		<a class="nav-link" >${login_Info.name }님 안녕하세요</a>
	                    	</li>
                    	</c:if>
                    </ul>
                  
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead" style="background: url('./resources/img/art_15964966087257_de821c.jpg')">
            <div class="container">
                <div class="masthead-subheading">Art_See</div>
                <div class="masthead-heading text-uppercase">Korea National Gallery</a></div>
				<c:if test="${login_Info.id ne null }">
                	<a class="portfolio-link btn btn-primary btn-xl text-uppercase" href="logout.mem">Logout</a>
                </c:if>
				<c:if test="${login_Info.id eq null }">
                	<a class="portfolio-link btn btn-primary btn-xl text-uppercase" data-bs-toggle="modal" href="#login">Login</a>
                </c:if>
            </div>
        </header>
        
        
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
										            	<a class="portfolio-link btn btn-primary btn-xl text-uppercase" data-bs-toggle="modal" href="#findId">아이디 찾기</a>
										            	<input type="submit" value="로그인" id="bt" class="btn btn-primary" onclick="blankCheck()">
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
                                    <p class="item-intro text-muted"><img class="img-fluid d-block mx-auto login" src="<%=request.getContextPath() %>/resources/img/login.png"alt="..." /></p>
                   
                                    <div class="row" id="row">
									   <div class="col-lg-4">
									      <div class="bs-component">
									      
									         <div class="card border-primary mb-3" id="res">
									          <div class="card-header">회원인증</div>
									          <div class="card-body">
									            <h4 class="card-title">아이디 찾기</h4><br>
									            <form action="findId.mem" name="findId">
										            성함&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										            <input type="text" placeholder="성함을 입력하세요" name="name" class="form-control col-xs-3" style="display: inline-block;"><br><br>
										           	핸드폰번호&nbsp;&nbsp;:&nbsp;&nbsp;<input type="text" name="phone" placeholder="-를 제외하고 입력하세요" class="form-control col-xs-3" style="display: inline-block;"><br><br>
										            <br>
										            <center>
										            	<input type="submit" value="아이디 찾기" id="bt" class="btn btn-primary" onclick="blankCheck()">
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
        