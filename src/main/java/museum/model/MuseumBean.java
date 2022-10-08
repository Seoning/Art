package museum.model;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class MuseumBean { //12 ph = ph1+ph2
	private int no;
	@NotBlank(message = "미술관명을 입력하세요")
	private String name;
	@NotBlank(message = "주소를 입력하세요")
	private String address;
	@NotBlank(message = "전화번호를 입력하세요")
	private String ph1;
	@NotBlank(message = "전화번호를 입력하세요")
	private String ph2;
	public String getPh1() {
		return ph1;
	}
	public void setPh1(String ph1) {
		this.ph1 = ph1;
	}
	public String getPh2() {
		return ph2;
	}
	public void setPh2(String ph2) {
		this.ph2 = ph2;
	}
	private String ph;
	@NotEmpty(message = "휴무일을 선택하세요")
	private String offday;
	@NotBlank(message = "미술관 계층 선택하세요")
	private String totalfloor;
	@NotEmpty(message = "개장시간을 선택하세요")
	private String open;
	@NotEmpty(message = "폐장시간을 선택하세요")
	private String close;
	@NotEmpty(message = "야간개장일을 선택하세요")
	private String nightopen;
	@NotEmpty(message = "키워드를 선택하세요")
	private String opt;
	
	private String img;
	
	
	private MultipartFile upload;
	
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
		this.img = upload.getOriginalFilename();
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getPh() {
		return ph;
	}
	public void setPh(String ph) {
		this.ph = ph;
	}
	public String getOffday() {
		return offday;
	}
	public void setOffday(String offday) {
		this.offday = offday;
	}
	public String getTotalfloor() {
		return totalfloor;
	}
	public void setTotalfloor(String totalfloor) {
		this.totalfloor = totalfloor;
	}
	public String getOpen() {
		return open;
	}
	public void setOpen(String open) {
		this.open = open;
	}
	public String getClose() {
		return close;
	}
	public void setClose(String close) {
		this.close = close;
	}
	public String getNightopen() {
		return nightopen;
	}
	public void setNightopen(String nightopen) {
		this.nightopen = nightopen;
	}
	public String getOpt() {
		return opt;
	}
	public void setOpt(String opt) {
		this.opt = opt;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
	
}
