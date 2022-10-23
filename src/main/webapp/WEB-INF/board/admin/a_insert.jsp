<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Admin_Top.jsp" %>
<style>
	.table {
		width: 50%;
		margin: auto;
	}
	#message{
		height:300px;
	}

</style>
<form action="a_insert.bd" method="post">
	<input type="hidden" value="${bb.no }" name="no">
	<table class="table table-hover">
			<tr class="table-primary">
				<th scope="row" colspan="6" height="50px" style="vertical-align: middle; text-align: center;"><h5>Contact Us</h5></th>
			</tr>

			
			<tr class="table-primary">
				<th scope="row">
					<strong>제목:</strong>
					<input type="text" name="title"  class="form-control"><br>
				</th>
			</tr>
			<tr>
				<td id="message">
					<strong>문의내용:</strong>
					<textarea name="message" style="resize: none;" rows="15" cols="77"  class="form-control"></textarea>
				</td>
			</tr>
		</table>
	
	<br>
	<center>
		<input type="submit" value="등록하기"  class="btn btn-outline-primary">
	</center>
	
</form>

<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>