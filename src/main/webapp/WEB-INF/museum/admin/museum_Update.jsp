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
    <br><br>
    <form:form action="update.mu" method="post" enctype="multipart/form-data" commandName="museumBean">
    <input type="hidden" class="form-control" name="no" value="${mb.no }">
		<table class="table table-hover">
			<tr class="table-primary" id="title">
				<th scope="row" colspan="2">미술관 정보 수정하기</th>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">미술관명</th>
				<td scope="row"><input type="text" class="form-control"
					name="name" value="${mb.name }">
				<form:errors cssClass="err" path="name"/>
					</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">미술관 주소</th>
				<td scope="row"><input type="text" class="form-control"
					name="address" value=${mb.address }>
					<form:errors cssClass="err" path="address"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">미술관 전화번호</th>
				<td scope="row"><input type="text" class="form-control" id="ph"
					name="ph1" value=${mb.ph1 }> &nbsp;-&nbsp; <input type="text"
					class="form-control" id="ph" name="ph2" value=${mb.ph2 }>
					<form:errors cssClass="err" path="ph"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">휴무일</th>
				<td scope="row">
					<input type="checkbox" class="form-check-input" name="offday" value="연중무휴" <c:if test="${fn:contains(mb.offday,'연중무휴')}">checked</c:if>>없음&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="offday" value="월" <c:if test="${fn:contains(mb.offday,'월')}">checked</c:if>>월&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="offday" value="화" <c:if test="${fn:contains(mb.offday,'화')}">checked</c:if>>화&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="offday" value="수" <c:if test="${fn:contains(mb.offday,'수')}">checked</c:if>>수&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="offday" value="목" <c:if test="${fn:contains(mb.offday,'목')}">checked</c:if>>목&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="offday" value="금" <c:if test="${fn:contains(mb.offday,'금')}">checked</c:if>>금&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="offday" value="토" <c:if test="${fn:contains(mb.offday,'토')}">checked</c:if>>토&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="offday" value="일" <c:if test="${fn:contains(mb.offday,'일')}">checked</c:if>>일&nbsp;&nbsp;&nbsp;
					<form:errors cssClass="err" path="offday"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">미술관 총 계층</th>
				<td scope="row">
					<input type="checkbox" class="form-check-input" name="totalfloor" value="B2" <c:if test="${fn:contains(mb.totalfloor,'B2')}">checked</c:if>>B2&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="totalfloor" value="B1" <c:if test="${fn:contains(mb.totalfloor,'B1')}">checked</c:if>>B1&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="totalfloor" value="1F" <c:if test="${fn:contains(mb.totalfloor,'1F')}">checked</c:if>>1F&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="totalfloor" value="2F" <c:if test="${fn:contains(mb.totalfloor,'2F')}">checked</c:if>>2F&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="totalfloor" value="3F" <c:if test="${fn:contains(mb.totalfloor,'3F')}">checked</c:if>>3F&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="totalfloor" value="4F" <c:if test="${fn:contains(mb.totalfloor,'4F')}">checked</c:if>>4F&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="totalfloor" value="5F" <c:if test="${fn:contains(mb.totalfloor,'5F')}">checked</c:if>>5F&nbsp;&nbsp;&nbsp;
					<form:errors cssClass="err" path="totalfloor"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">개장시간</th>
				<td scope="row"><input type="time" class="form-control"
					name="open" value="${mb.open }">
					<form:errors cssClass="err" path="open"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">폐장시간</th>
				<td scope="row"><input type="time" class="form-control" name="close" value="${mb.close }">
					<form:errors cssClass="err" path="close"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">야간개장일</th>
				<td scope="row">					
					<input type="checkbox" class="form-check-input" name="nightopen" value="없음" <c:if test="${fn:contains(mb.nightopen,'없음')}">checked</c:if>>없음&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="nightopen" value="월" <c:if test="${fn:contains(mb.nightopen,'월')}">checked</c:if>>월&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="nightopen" value="화" <c:if test="${fn:contains(mb.nightopen,'화')}">checked</c:if>>화&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="nightopen" value="수" <c:if test="${fn:contains(mb.nightopen,'수')}">checked</c:if>>수&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="nightopen" value="목" <c:if test="${fn:contains(mb.nightopen,'목')}">checked</c:if>>목&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="nightopen" value="금" <c:if test="${fn:contains(mb.nightopen,'금')}">checked</c:if>>금&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="nightopen" value="토" <c:if test="${fn:contains(mb.nightopen,'토')}">checked</c:if>>토&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="nightopen" value="일" <c:if test="${fn:contains(mb.nightopen,'일')}">checked</c:if>>일&nbsp;&nbsp;&nbsp;
					<form:errors cssClass="err" path="nightopen"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">키워드</th>
				<td scope="row">
					<input type="checkbox" class="form-check-input" name="opt" value="전시" <c:if test="${fn:contains(mb.opt,'전시')}">checked</c:if>>전시&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" class="form-check-input" name="opt" value="필름앤비디오" <c:if test="${fn:contains(mb.opt,'필름앤비디오')}">checked</c:if>>필름앤비디오&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="opt" value="다원예술" <c:if test="${fn:contains(mb.opt,'다원예술')}">checked</c:if>>다원예술&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="opt" value="교육" <c:if test="${fn:contains(mb.opt,'교육')}">checked</c:if>>교육&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="opt" value="이벤트" <c:if test="${fn:contains(mb.opt,'이벤트')}">checked</c:if>>이벤트&nbsp;&nbsp;&nbsp;
					<input type="checkbox" class="form-check-input" name="opt" value="어린이이벤트" <c:if test="${fn:contains(mb.opt,'어린이이벤트')}">checked</c:if>>어린이이벤트&nbsp;&nbsp;&nbsp;
					<form:errors cssClass="err" path="opt"/>
				</td>
			</tr>
			<tr class="table-light">
				<th scope="row" id="title">미술관 사진</th>
				<td scope="row">
				<%ServletContext context = config.getServletContext(); 
				String path = context.getContextPath()+"/resources/img/museumImg/";
				%>
				<img src="<%=path%>${mb.img}">
				<input type="hidden" class="form-control"
					name="before" value="${mb.img}">
				<input type="file" class="form-control"
					name="upload">
					<form:errors cssClass="err" path="upload"/>
				</td>
			</tr>
			
		</table>
	<br>	
	<center>
	<div>		
		<input type="button" value="상세보기" class="btn btn-secondary" onclick="location.href='detail.mu?no=${mb.no}'">
		<input type="submit" value="수정하기" class="btn btn-primary">
		<input type="reset" value="지우기" class="btn btn-danger">
	</div>
	</center>
	</form:form>



<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>