<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>
<style>
	.table {
		width: 50%;
		margin: auto;
	}
	#message{
		height:300px;
	}
	.reple{
		width: 50%;
		margin: auto;
	}
	.card-body{
		padding: 15px;
	}
	.card-text{
		margin-bottom: 10px;
	}
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#submit').click(function(){
			if($('textarea[name="remsg"]').val()==""){
				alert('댓글내용을 입력하세요');
				return false;
			}
		});
	});
</script>
<br>


	<table class="table table-hover">
		<tr class="table-primary">
			<th scope="row" colspan="6" height="50px" style="vertical-align: middle; text-align: center;">
				<h5 style="display: inline-block;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact Us</h5>
				<input type="button" value="목록보기" onclick="location.href='list.bd'" class="btn btn-secondary" style="float: right;">
			</th>
		</tr>
		<fmt:parseDate var="cday" value="${bb.cday }" pattern="yyyy-MM-dd HH:mm"/>
		<fmt:formatDate var="cday" value="${cday }" pattern="yyyy-MM-dd HH:mm"/>
		
		<tr class="table-primary">
			<th scope="row">
				<strong>${bb.title }</strong><br>
				<small>${bb.id }&nbsp;&nbsp;조회수:${bb.readcnt}회&nbsp;&nbsp;작성일:${cday }&nbsp;&nbsp;댓글수:${bb.reply }개</small><Br>
			</th>
		</tr>
		<tr>
			<td id="message">${bb.message }</td>
		</tr>
	</table>
	<br>
	<div class="card mb-3 reple">
		<div class="card-header"><strong>댓글</strong></div>
			<c:if test="${empty lists }">
			<div class="card-body">
				등록된 댓글이 없습니다.
			</div>
			</c:if>
			<c:if test="${not empty lists }">
			<div class="card-body">
				<c:forEach var="rb" items="${lists }">
					<div class="card-text">
					<small><mark>${rb.id }</mark> / ${rb.cday}</small><br>
					${rb.content }
					<c:if test="${login_Info.id eq 'admin' }">
					<input type="button" value="댓글삭제" class="btn btn-primary btn-sm" onclick="location.href='deleteReply.rp?reno=${rb.reno}&no=${rb.no}'">
					<input type="button" value="댓글수정" class="btn btn-primary btn-sm" onclick="location.href='updateReply.rp?reno=${rb.reno}&no=${rb.no}'">
					</c:if>
					</div>
					
				</c:forEach>
			</div>
			</c:if>
	</div>

<br>
<c:if test="${login_Info.id eq 'admin' }">
	<form action="replyInsert.rp">
		<input type="hidden" name="reno" value="${bb.no }">
		<input type="hidden" name="id" value="${login_Info.id}">
		<div class="card mb-3 reple">
			<div class="card-header"><strong>댓글쓰기</strong></div>
			<div class="card-body">
				<textarea name="content" style="resize: none;" cols="77" class="form-control">
				
				</textarea>
				<input type="submit" class="btn btn-primary btn-sm" value="등록하기" id="submit" style="float: right;" class="btn btn-outline-primary">
			</div>
		</div>
	</form>
</c:if>
<br>
<c:if test="${login_Info.id eq bb.id}">
<center>
	<input type="button" value="수정하기" onclick="location.href='update.bd?no=${bb.no}'" class="btn btn-outline-success">
	<input type="button" value="삭제하기" onclick="location.href='delete.bd?no=${bb.no}'" class="btn btn-outline-danger">
</center>
</c:if>

<br><br><br>



<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>