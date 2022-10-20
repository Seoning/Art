package member.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;


public class MemberBean {
	private int no;
	@NotNull(message = "아이디를 입력하세요")
	@Pattern(regexp = "^[a-z0-9_]{6,16}$",message = "6~16자 이내로 영어 소문자와 숫자를 혼합하여 입력하세요")
	private String id;
	@NotNull(message = "비밀번호를 입력하세요")
	@Pattern(regexp = "^[a-z0-9][!@#$%^*?]*.{6,12}$", message = "6~12자 이내로 영어 소문자,숫자,특수문자(!@#$%^*?)를 혼합하여 입력하세요")
	private String pw;
	@NotNull(message = "비밀번호를 입력하세요")
	private String repw; //no DB
	@Pattern(regexp = "^[a-zA-z가-힣]{2,6}$",message = "2글자 이상 6글자 미만으로 입력하세요")
	@NotNull(message = "이름을 입력하세요")
	private String name;
	@NotNull(message = "주소를 입력하세요")
	private String address;
	@NotNull(message = "연락처를 입력하세요")
	private String phone;
	
	private String signup_day;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getSignup_day() {
		return signup_day;
	}
	public void setSignup_day(String signup_day) {
		this.signup_day = signup_day;
	}
	public String getRepw() {
		return repw;
	}
	public void setRepw(String repw) {
		this.repw = repw;
	}
	
	
}
