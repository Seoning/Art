<%@page import="member.model.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/common/common.jsp" %>
    

	<c:if test="${login_Info.id eq 'admin'}">
		<%@include file="/WEB-INF/Top&Bottom/Admin_Top.jsp" %>
	</c:if>
	<c:if test="${login_Info.id ne 'admin' || empty login_Info.id }">
		
	

    
<!DOCTYPE html>
<html lang="en">
    <head>
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
        	.find{
        		width:350px;
        		height:140px;
        	}
        	.pay{
        		width:350px;
        		height:140px;
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
                         <li class="nav-item">
                        	 <a class="nav-link" id="naverLogin"></a>
                         </li>
                    	<c:if test="${login_Info.id ne null }">
	                    	<li class="nav-item">
	                    		<a class="nav-link" href="mypage.mem?no=${login_Info.no }">${login_Info.name }님 안녕하세요</a>
	                    	</li>
                    	</c:if>
                    	<c:if test="${sessionId != null}">
	                    	<li class="nav-item">
	                    		<a class="nav-link" href="">${sessionId}님 안녕하세요</a>
	                    	</li>
                    	</c:if>
                    </ul>
                  
                </div>
            </div>
        </nav>
        <!--Home Main-->
        <header class="masthead" style="background: url('./resources/img/art_15964966087257_de821c.jpg')">
            <div class="container" id="centerButton">
                <div class="masthead-subheading">Art_See</div>
                <div class="masthead-heading text-uppercase">Korea National Gallery</div>
               	<a id="naverLogout" onclick="naverLogout();"></a>
				<c:if test="${login_Info.id ne null}">
                	<a class="portfolio-link btn btn-primary btn-xl text-uppercase" href="logout.mem">Logout</a>
                </c:if>
				<c:if test="${sessionId ne null }">
                	<a class="portfolio-link btn btn-primary btn-xl text-uppercase" href="logout">Logout</a>
                </c:if>
				<c:if test="${login_Info.id eq null && sessionId eq null }">
                	<a class="portfolio-link btn btn-primary btn-xl text-uppercase" id="memberLogin" data-bs-toggle="modal" href="#login">Login</a>
                </c:if>
            </div>
        </header>
 </c:if>
<%@include file="/WEB-INF/Top&Bottom/AllModal.jsp" %>
        