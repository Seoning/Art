<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Art-See</title>
<!--Boot-->

<%@include file="/WEB-INF/common/common.jsp" %>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/startbootstrap-agency-gh-pages/css/styles.css"
	rel="stylesheet" />
	
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
</style>

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
                    	<li class="nav-item dropdown">
	                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Member</a>
	                        <div class="dropdown-menu">
	                          <a class="dropdown-item" href="list.mem">목록보기</a>
	                        </div>
                      	</li>
                        
                    	<li class="nav-item dropdown">
	                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Museum</a>
	                        <div class="dropdown-menu">
	                          <a class="dropdown-item" href="list.mu">목록보기</a>
	                          <a class="dropdown-item" href="insert.mu">추가하기</a>
	                        </div>
                      	</li>
                      	
                    	<li class="nav-item dropdown">
	                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Exhibition</a>
	                        <div class="dropdown-menu">
	                          <a class="dropdown-item" href="exlist.ex">목록보기</a>
	                          <a class="dropdown-item" href="exinsert.ex">추가하기</a>
	                        </div>
                      	</li>
                        <li class="nav-item"><a class="nav-link" href="A_list.re">Reservation</a></li>
                        <li class="nav-item dropdown">
	                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Contact</a>
	                        <div class="dropdown-menu">
	                          <a class="dropdown-item" href="list.bd">목록보기</a>
	                          <a class="dropdown-item" href="a_insert.bd">등록하기</a>
	                        </div>
                      	</li>
                        
                        <c:if test="${login_Info.id ne null }">
	                    	<li class="nav-item">
	                    		<a class="nav-link" href="">${login_Info.name }님 안녕하세요</a>
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
                <div class="masthead-heading text-uppercase">Admin</div>
                <a class="portfolio-link btn btn-primary btn-xl text-uppercase" href="logout.mem">Logout</a>
            </div>
        </header>
        
        
        
<%@include file="/WEB-INF/Top&Bottom/AllModal.jsp" %>