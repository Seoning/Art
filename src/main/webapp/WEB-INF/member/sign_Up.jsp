<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>
<style>
	.card{
		height: 350px;
		margin:auto;
	}
	.badge{
		font-size: 12pt;
		height: 30px;
		vertical-align: sub;
	}
	.col-xs-3{
		width:250px;
		vertical-align: sub;
	}
</style>

<br>
<div id="row">
	 <div class="bs-component">
	   <div class="card border-primary mb-3" style="max-width: 50rem;">
		<form action="signUp.mem" method="post">
	     <div class="card-header">Sign_up for Art_See</div>
	       <div class="card-body">
	           <h4 class="card-title">회원가입</h4>
		           <ul>
		           		<li class="list-inline">
		           			<span class="badge bg-primary">아이디</span>&nbsp;&nbsp;<input type="text" name="id" class="form-control col-xs-3" placeholder="아이디를 입력하세요" style="display: inline-block;">
		           		</li>
		           		<br>
		           		<li class="list-inline">
		           			<span class="badge bg-primary">비밀번호</span>&nbsp;&nbsp;<input type="text" name="id" class="form-control col-xs-3" placeholder="비밀번호를 입력하세요" style="display: inline-block;">
		           		</li>
		           		
		           </ul>
	           
	      		</div>
			<input type="submit" value="가입하기" class="btn btn-primary">
		</form>
    </div>
  </div>
</div>




<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>