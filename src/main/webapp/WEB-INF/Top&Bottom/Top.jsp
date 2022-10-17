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
        	
        </style>
    <script type="text/javascript">
    	
    </script>    
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="home.mu"><img id="img" src="<%=request.getContextPath() %>/resources/startbootstrap-agency-gh-pages/assets/img/navbar-logo.svg" alt="..."/></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <!-- <li class="nav-item"><a class="nav-link" href="#services">Services</a></li> -->
                        <li class="nav-item"><a class="nav-link" href="#portfolio">Museum</a></li>
                        <li class="nav-item"><a class="nav-link" href="#about">Exhibition</a></li>
                        <li class="nav-item"><a class="nav-link" href="#team">Shop</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead" style="background: url('./resources/img/art_15964966087257_de821c.jpg')">
            <div class="container">
                <div class="masthead-subheading">Art_See</div>
                <div class="masthead-heading text-uppercase">Korea National Gallery</a></div>
                <a class="btn btn-primary btn-xl text-uppercase" href="#portfolio">Start</a>
            </div>
        </header>