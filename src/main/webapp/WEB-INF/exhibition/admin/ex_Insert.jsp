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
	.err{
		font-size: 10px;
		color: red;
	}
	th{
		font-weight: bolder;
		width: 150px;
		text-align: center;
	}
</style>

 <form:form action="exinsert.ex" method="post" enctype="multipart/form-data">
	<table class="table table-hover">
		<tr class="table-primary"  >
			<th scope="row" colspan="2">전시회 등록하기</th>
		</tr>
		<tr>
			<th class="table-primary"  scope="row"  >전시명</th>
			<td scope="row"><input type="text" class="form-control" name="title"></td>
		</tr>
		<tr>
			<th class="table-primary"  scope="row"  >작가명</th>
			<td scope="row"><input type="text" class="form-control" name="painter"></td>
		</tr>
		<tr>
			<th class="table-primary"  scope="row"  >전시회장</th>
			<td scope="row">
				<select name="museum">
					<option value="국립현대미술관">국립현대미술관</option>
					<option value="국립현대미술관_덕수궁">국립현대미술관_덕수궁</option>
					<option value="국립현대미술관_과천">국립현대미술관_과천</option>
					<option value="국립현대미술관_청주">국립현대미술관_청주</option>
					<option value="국립중앙미술관">국립중앙미술관</option>
				</select>
			</td>
		</tr>
		<tr>
			<th class="table-primary"  scope="row"  >위치</th>
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
			<th class="table-primary"  scope="row"  >시작일</th>
			<td scope="row"><input type="date" class="form-control" name="startday"></td>
		</tr>
		<tr>
			<th class="table-primary"  scope="row"  >종영일</th>
			<td scope="row"><input type="date" class="form-control" name="endday"></td>
		</tr>
		<tr>
			<th class="table-primary"  scope="row"  >전시소개</th>
			<td scope="row"><textarea name="content" cols="88" rows="5" ></textarea></td>
		</tr>
		<tr>
			<th class="table-primary"  scope="row"  >후원기관</th>
			<td scope="row"><input type="text" class="form-control" name="sponsor"></td>
		</tr>
		<tr>
			<th class="table-primary"  scope="row"  >관람료</th>
			<td scope="row"><input type="text" class="form-control" name="price"></td>
		</tr>
		<tr>
			<th class="table-primary"  scope="row"  >총 작품 수</th>
			<td scope="row"><input type="text" class="form-control" name="count"></td>
		</tr>
		<tr>
			<th class="table-primary"  scope="row"  >첨부사진</th>
			<td scope="row">
				<input type="file" class="form-control" name="upload">
			</td>
		</tr>
		
	</table>
	<br>
	<center>
	<div>		
		<input type="button" value="목록보기" class="btn btn-secondary" onclick="location.href='exlist.ex'">
		<input type="submit" value="등록하기" class="btn btn-primary">
		<input type="reset" value="지우기" class="btn btn-danger">
	</div>
	</center>
	
</form:form>

	<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>