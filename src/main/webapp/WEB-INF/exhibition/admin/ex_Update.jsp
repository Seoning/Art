<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Admin_Top.jsp" %>
<style>
	.table {
	width: 80%;
	margin: auto;
	}
	#ph {
		width: 390px;
		display: inline;
	}
	#title {
		text-align: center;
	}
	.err{
		font-size: 10px;
		color: red;
	}
</style>

 <form:form action="exupdate.ex" method="post" enctype="multipart/form-data">
	<input type="hidden" name="no" value="${eb.no }">
	<table class="table table-hover">
		<tr class="table-primary" id="title">
			<th scope="row" colspan="2">전시회 수정하기</th>
		</tr>
		<tr>
			<th scope="row" id="title">전시명</th>
			<td scope="row"><input type="text" class="form-control" name="title" value=${eb.title }></td>
		</tr>
		<tr>
			<th scope="row" id="title">작가명</th>
			<td scope="row"><input type="text" class="form-control" name="painter" value=${eb.painter }></td>
		</tr>
		<tr>
			<th scope="row" id="title">전시회장</th>
			<td scope="row">
				<select name="museum">
					<c:forEach var="mb" items="${lists }">
						<option value="${mb.name }">${mb.name }</option>
					</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<th scope="row" id="title">위치</th>
			<td scope="row">
			<select name="place">
					<option value="B2" <c:if test="${eb.museum.equals('B2') }"> selected</c:if>>B2</option>
					<option value="B1" <c:if test="${eb.museum.equals('B1') }"> selected</c:if>>B1</option>
					<option value="1F" <c:if test="${eb.museum.equals('1F') }"> selected</c:if>>1F</option>
					<option value="2F" <c:if test="${eb.museum.equals('2F') }"> selected</c:if>>2F</option>
					<option value="3F" <c:if test="${eb.museum.equals('3F') }"> selected</c:if>>3F</option>
					<option value="4F" <c:if test="${eb.museum.equals('4F') }"> selected</c:if>>4F</option>
					<option value="5F" <c:if test="${eb.museum.equals('5F') }"> selected</c:if>>5F</option>
			</select></td>
		</tr>
		<tr>
			<th scope="row" id="title">시작일</th>
			<td scope="row"><input type="date" class="form-control" name="startday" value=${eb.startday }></td>
		</tr>
		<tr>
			<th scope="row" id="title">종영일</th>
			<td scope="row"><input type="date" class="form-control" name="endday" value=${eb.endday }></td>
		</tr>
		<tr>
			<th scope="row" id="title">전시소개</th>
			<td scope="row"><textarea name="content" cols="88" rows="5">${eb.content }</textarea></td>
		</tr>
		<tr>
			<th scope="row" id="title">후원기관</th>
			<td scope="row"><input type="text" class="form-control" name="sponsor" value=${eb.sponsor }></td>
		</tr>
		<tr>
			<th scope="row" id="title">관람료</th>
			<td scope="row"><input type="text" class="form-control" name="price" value=${eb.price }></td>
		</tr>
		<tr>
			<th scope="row" id="title">총 작품 수</th>
			<td scope="row"><input type="text" class="form-control" name="count" value=${eb.count }></td>
		</tr>
		<tr>
			<th scope="row" id="title">첨부사진</th>
			<td scope="row">
				<input type="hidden" class="form-control" name="before" value=${eb.img }>
				<img src="<%=request.getContextPath()%>/resources/img/exhib/${eb.img }" width=250>
				<input type="file" class="form-control" name="upload">
			</td>
		</tr>
		
	</table>
	<br>
	<center>
	<div>		
		<input type="button" value="목록보기" class="btn btn-secondary" onclick="location.href='exlist.ex'">
		<input type="submit" value="수정하기" class="btn btn-primary">
		<input type="reset" value="지우기" class="btn btn-danger">
	</div>
	</center>
	
</form:form>

	<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>