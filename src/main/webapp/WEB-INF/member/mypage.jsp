<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>

<style>
	.card{
		width: 50%;
		height:500px;
	}
</style>

 <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
         <script type="text/javascript">
        	$(document).ready(function(){
        		$('#signout').click(function(){
        			//alert(1);\
        			if($('input[name="pw"]').val()==""){
        				alert('비밀번호를 입력하세요');
        				return false;
        			}
        		});
        	});
        </script>

<br>
<div class="card border-primary mb-3" style="max-width: 40rem;">
  <div class="card-header">마이페이지</div>
  <div class="card-body">
    <p class="card-text">
    	
    	<h4 id="nav-tabs">내 정보 확인하기</h4>
            <div class="bs-component">
              <ul class="nav nav-tabs">
                <li class="nav-item">
                  <a class="nav-link active" data-bs-toggle="tab" href="#reserve">예약내역</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" data-bs-toggle="tab" href="#profile">회원정보</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" data-bs-toggle="tab" href="#signout">회원탈퇴</a>
                </li>
                
              </ul>
              <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade show active" id="reserve">
                  <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                </div>
                
                <div class="tab-pane fade" id="profile">
						<table class="table table-hover">
						<tr class="table-primary">
							<th scope="row" colspan="2">내 정보</th>
						</tr>
						<tr>
							<th scope="row">아이디</th>
							<td colspan="">${memb.id }</td>
						</tr>
						<tr>
							<th scope="row">이름</th>
							<td colspan="">${memb.name }</td>
						</tr>
						<tr>
							<th scope="row">연락처</th>
							<td colspan="">${memb.phone }</td>
						</tr>
						<tr>
							<th scope="row">주소</th>
							<td colspan="">${memb.address }</td>
						</tr>
						</table>
						<center>
							<input type="button" value="수정" onclick="location.href='user_update.mem?no=${memb.no}'" class="btn btn-outline-success">
						</center>
                </div>
               
                <div class="tab-pane fade" id="signout">
                  <br>
	              <form action="signout.mem">
	                  <input type="hidden" name="no" value="${login_Info.no }">
	                  <input type="password" name="pw" placeholder="비밀번호를 입력하세요" class="form-control col-xs-3" style="display: inline-block;">
	                  <input type="submit" id="signout" value="탈퇴하기" class="btn btn-outline-danger">
	              </form>
                </div>
               
              </div>
            </div>
          </div>
	</p>
  </div>






<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>