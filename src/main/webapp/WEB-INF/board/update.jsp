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

</style>
<form action="update.bd" method="post">
	<input type="hidden" value="${bb.no }" name="no">
	<table class="table table-hover">
			<tr class="table-primary">
				<th scope="row" colspan="6" height="50px" style="vertical-align: middle; text-align: center;"><h5>Contact Us</h5></th>
			</tr>
			<fmt:parseDate var="cday" value="${bb.cday }" pattern="yyyy-MM-dd HH:mm:ss"/>
			<fmt:formatDate var="cday" value="${cday }" pattern="yyyy-MM-dd HH:mm:ss"/>
			
			<tr class="table-primary">
				<th scope="row">
					<input type="text" value="${bb.title }" name="title" class="form-control"><br>
					<small>${bb.id }&nbsp;&nbsp;조회수:${bb.readcnt}회&nbsp;&nbsp;작성일:${cday }&nbsp;&nbsp;댓글수:${bb.reply }개</small><Br>
				</th>
			</tr>
			<tr>
				<td id="message">
					<textarea name="message" rows="15" style="resize: none;" cols="77"  class="form-control">
					${bb.message }
					</textarea>
				</td>
			</tr>
		</table>
	
	<br>
	<center>
		<input type="submit" value="수정하기"  class="btn btn-outline-success">
	</center>
	
</form>

<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>