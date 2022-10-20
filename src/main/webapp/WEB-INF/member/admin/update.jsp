<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/Top&Bottom/Admin_Top.jsp" %>
<style>
	.table{
		margin: auto;
		width: 50%;
	}
	.col-xs-3{
		width:250px;
	}
	
</style>
<br>

<form action="update.mem" method="post">
	<input type="hidden" value="${memb.signup_day }" name="signup_day">
	<table class="table table-hover">
		<tr class="table-primary">
			<th scope="row" colspan="2" style="text-align: center;" >회원 정보 수정</th>
		</tr>
		<tr class="table-light">
			<th scope="row" colspan="1">No.</th>
			<td><input type="tel" readonly="readonly" name="no" value="${memb.no }" class="form-control col-xs-3"></td>
		</tr> 
		<tr>
			<th scope="row">이름</th>
			<td><input type="text" readonly name="name" value="${memb.name }" class="form-control col-xs-3"></td>
		</tr>
		<tr>
			<th scope="row">아이디</th>
			<td><input type="text" readonly name="id" value="${memb.id }" class="form-control col-xs-3"></td>
		</tr>
		<tr>
			<th scope="row">연락처</th>
			<td><input type="text" name="phone" value="${memb.phone }" class="form-control col-xs-3"></td>
		</tr>
		<tr>
			<th scope="row">주소</th>
			<td>
			<input type="text" readonly="readonly" name="before" value="${memb.address }" class="form-control col-xs-2"><br>
			<label class="col-form-label mt-4" for="inputDefault">변경할 주소</label><br>
					<input type="text" id="address"  name="address" placeholder="우편번호" class="form-control col-xs-3" style="display: inline-block;">
					<input type="button" onclick="sample6_execDaumPostcode()"  value="우편번호 찾기" class="btn btn-primary" style="display: inline-block;"><br>
					<input type="text" id="sample6_address"  name="sample6_address" placeholder="주소" class="form-control col-xs-3" style="display: inline-block;"><br>
					<input type="text" id="sample6_detailAddress"  name="sample6_detailAddress" placeholder="상세주소" class="form-control col-xs-3" style="display: inline-block;">
					<input type="text" id="sample6_extraAddress"  name="sample6_extraAddress" placeholder="참고항목" class="form-control col-xs-3" style="display: inline-block;">
					<form:errors cssClass="err" path="address" />
					<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<script>
					    function sample6_execDaumPostcode() {
					        new daum.Postcode({
					            oncomplete: function(data) {
					                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					
					                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
					                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					                var addr = ''; // 주소 변수
					                var extraAddr = ''; // 참고항목 변수
					
					                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					                    addr = data.roadAddress;
					                } else { // 사용자가 지번 주소를 선택했을 경우(J)
					                    addr = data.jibunAddress;
					                }
					
					                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					                if(data.userSelectedType === 'R'){
					                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
					                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
					                        extraAddr += data.bname;
					                    }
					                    // 건물명이 있고, 공동주택일 경우 추가한다.
					                    if(data.buildingName !== '' && data.apartment === 'Y'){
					                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					                    }
					                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					                    if(extraAddr !== ''){
					                        extraAddr = ' (' + extraAddr + ')';
					                    }
					                    // 조합된 참고항목을 해당 필드에 넣는다.
					                    document.getElementById("sample6_extraAddress").value = extraAddr;
					                
					                } else {
					                    document.getElementById("sample6_extraAddress").value = '';
					                }
					
					                // 우편번호와 주소 정보를 해당 필드에 넣는다.
					                document.getElementById('address').value = data.zonecode;
					                document.getElementById("sample6_address").value = addr;
					                // 커서를 상세주소 필드로 이동한다.
					                document.getElementById("sample6_detailAddress").focus();
					            }
					        }).open();
					    }
					</script>
			
			
			</td>
		</tr>
	</table>
	<br>
	<center>
		<input type="submit" value="수정하기" class="btn btn-primary">
		<input type="button" value="목록보기" onclick="location.href='list.mem'" class="btn btn-outline-primary">
	</center>
</form>



<br><br>
<%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>