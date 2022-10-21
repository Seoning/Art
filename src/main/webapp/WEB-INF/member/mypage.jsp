<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>

<style>
	#mypage{
		width: 50%;
		height:500px;
	}
</style>

 <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
         <script type="text/javascript">
        	$(document).ready(function(){
        		$('#signout').click(function(){
        			//alert(1);\
        			if($('input[id="pw"]').val()==""){
        				alert('비밀번호를 입력하세요');
        				return false;
        			}
        		});
        	});
        </script>

<br>
<div class="card border-primary mb-3" id="mypage" style="max-width: 40rem;">
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
	            	<table class="table table-hover" id="table">
						<tr class="table-primary">
							<th scope="row">No.</th>
							<th scope="row">전시회명</th>
							<th scope="row">관람일</th>
							<th scope="row">인원수</th>
							<th scope="row">가격</th>
						</tr>
						<c:if test="${not empty lists }">
							<c:forEach var="rb" items="${lists }">
							<tr class="table-light">
								<Td>${rb.no }</Td>
								<Td><a href="detail.re?no=${rb.no }&title=${rb.title}">${rb.title }</a></Td>
								<Td>${rb.day }</Td>
								<Td>${rb.count }</Td>
								<Td>${rb.price }</Td>
							</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty lists }">
							<c:forEach var="rb" items="${lists }">
							<tr class="table-primary">
								<th scope="row" colspan="5">예약 내역이 없습니다.</th>
							</tr>
							</c:forEach>
						</c:if>
	            	</table>
                </div>
                
                
                <div class="tab-pane fade" id="profile">
						<c:if test="${not empty login_Info}">
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
							
						</c:if>
						
						<c:if test="${empty login_Info}">
							<table class="table table-hover">
								<tr class="table-primary">
									<th scope="row" colspan="2">내 정보</th>
								</tr>
								<tr class="table-light">
										<th scope="row" colspan="5"><center>비회원은 지원하지 않습니다.</center></th>
								</tr>
							</table>
						</c:if>
                </div>
               
                <div class="tab-pane fade" id="signout">
                  <br>
                  <c:if test="${not empty login_Info}">
		              <form action="signout.mem">
		                  <input type="hidden" name="no" value="${login_Info.no }">
		                  <input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요" class="form-control col-xs-3" style="display: inline-block;">
		                  <input type="submit" id="signout" value="탈퇴하기" class="btn btn-outline-danger">
		              </form>
	              </c:if>
	              <c:if test="${empty login_Info}">
	              	<p><strong><center>비회원은 지원하지 않습니다.</center></strong></p>
	              </c:if>
                </div>
               
              </div>
            </div>
          </div>

  </div>






<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>