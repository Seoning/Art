<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/Top&Bottom/Admin_Top.jsp" %>

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
    <br><br>
    <form:form action="insert.mu" method="post" enctype="multipart/form-data" commandName="museumBean">
		<table class="table table-hover">
			<tr class="table-secondary" id="title">
				<th scope="row" colspan="2">미술관 등록하기</th>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">미술관명</th>
				<td scope="row"><input type="text" class="form-control"
					name="name">
				<form:errors cssClass="err" path="name"/>
					</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">미술관 주소</th>
				<td scope="row"><input type="text" class="form-control"
					name="address">
					<form:errors cssClass="err" path="address"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">미술관 전화번호</th>
				<td scope="row"><input type="text" class="form-control" id="ph"
					name="ph1"> &nbsp;-&nbsp; <input type="text"
					class="form-control" id="ph" name="ph2">
					<form:errors cssClass="err" path="ph"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">휴무일</th>
				<td scope="row">
					<input type="checkbox" class="form-check-input" name="offday" value="연중무휴">없음&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="offday" value="월">월&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="offday" value="화">화&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="offday" value="수">수&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="offday" value="목">목&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="offday" value="금">금&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="offday" value="토">토&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="offday" value="일">일&nbsp;&nbsp;&nbsp;
					<form:errors cssClass="err" path="offday"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">미술관 총 계층</th>
				<td scope="row">
					<input type="checkbox" class="form-check-input" name="totalfloor" value="B2">B2&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="totalfloor" value="B1">B1&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="totalfloor" value="1F">1F&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="totalfloor" value="2F">2F&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="totalfloor" value="3F">3F&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="totalfloor" value="4F">4F&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="totalfloor" value="5F">5F&nbsp;&nbsp;&nbsp;
					<form:errors cssClass="err" path="totalfloor"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">개장시간</th>
				<td scope="row"><input type="time" class="form-control"
					name="open">
					<form:errors cssClass="err" path="open"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">폐장시간</th>
				<td scope="row"><input type="time" class="form-control"
					name="close">
					<form:errors cssClass="err" path="close"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">야간개장일</th>
				<td scope="row">					
					<input type="checkbox" class="form-check-input" name="nightopen" value="없음">없음&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="nightopen" value="월">월&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="nightopen" value="화">화&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="nightopen" value="수">수&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="nightopen" value="목">목&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="nightopen" value="금">금&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="nightopen" value="토">토&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="nightopen" value="일">일&nbsp;&nbsp;&nbsp;
					<form:errors cssClass="err" path="nightopen"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">키워드</th>
				<td scope="row">
					<input type="checkbox" class="form-check-input" name="opt" value="전시">전시&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="opt" value="필름앤비디오">필름앤비디오&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="opt" value="다원예술">다원예술&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="opt" value="교육">교육&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="opt" value="이벤트">이벤트&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="opt" value="어린이이벤트">어린이이벤트&nbsp;&nbsp;&nbsp;
					<form:errors cssClass="err" path="opt"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">미술관 사진</th>
				<td scope="row"><input type="file" class="form-control"
					name="upload">
					<form:errors cssClass="err" path="upload"/>
				</td>
			</tr>
			
		</table>
	<br>	
	<center>
	<div>		
		<input type="button" value="목록보기" class="btn btn-secondary" onclick="location.href='list.mu'">
		<input type="submit" value="등록하기" class="btn btn-primary" onclick="location.href='insert.mu'">
		<input type="reset" value="지우기" class="btn btn-danger">
	</div>
	</center>
	</form:form>
	<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>