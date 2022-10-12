<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Admin_Top.jsp" %>
ex_Insert.jsp<br>
<style>
	.table {
	width: 50%;
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

 <form:form action="exinsert.ex" method="post" enctype="multipart/form-data" commandName="exhibitionBean">
	<table class="table table-hover">
		<tr class="table-secondary" id="title">
			<th scope="row" colspan="2">전시회 등록하기</th>
		</tr>
		<tr>
			<th scope="row" id="title">전시제목</th>
			<td scope="row"><input type="text" class="form-control" name="title"></td>
		</tr>
		<tr>
			<th scope="row" id="title">작가명</th>
			<td scope="row"><input type="text" class="form-control" name="painter"></td>
		</tr>
		<tr>
			<th scope="row" id="title">전시회장</th>
			<td scope="row">
				<select name="museum">
					<option value="국립현대미술관">국립현대미술관</option>
					<option value="국립현대미술관_덕수궁">국립현대미술관_덕수궁</option>
					<option value="국립현대미술관_과천">국립현대미술관_과천</option>
					<option value="국립현대미술관_청">국립현대미술관_청주</option>
					<option value="국립중앙미술관">국립중앙미술관</option>
				</select>
			</td>
		</tr>
		<tr>
			<th scope="row" id="title">위치</th>
			<td scope="row">
			<select name="place">
					<option value="B2">B2</option>
					<option value="B1">B1</option>
					<option value="1F">1F</option>
					<option value="2F">2F</option>
					<option value="3F">3F</option>
					<option value="4F">4F</option>
					<option value="5F">5F</option>
			</select></td>
		</tr>
		<tr>
			<th scope="row" id="title">시작일</th>
			<td scope="row"><input type="date" class="form-control" name="startday"></td>
		</tr>
		<tr>
			<th scope="row" id="title">종영일</th>
			<td scope="row"><input type="date" class="form-control" name="endday"></td>
		</tr>
		<tr>
			<th scope="row" id="title">전시소개</th>
			<td scope="row"><input type="text" class="form-control" name="content"></td>
		</tr>
		<tr>
			<th scope="row" id="title">후원기관</th>
			<td scope="row"><input type="text" class="form-control" name="sponser"></td>
		</tr>
		<tr>
			<th scope="row" id="title">관람료</th>
			<td scope="row"><input type="text" class="form-control" name="price"></td>
		</tr>
		<tr>
			<th scope="row" id="title">첨부사진</th>
			<td scope="row">
				<input type="file" class="form-control" name="img1">
				<input type="file" class="form-control" name="img2">
				<input type="file" class="form-control" name="img3">
				<input type="file" class="form-control" name="img4">
				<input type="file" class="form-control" name="img5">
			</td>
		</tr>
		
		
	</table>
</form:form>

	<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>