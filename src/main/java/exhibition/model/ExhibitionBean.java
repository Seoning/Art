package exhibition.model;

import org.springframework.web.multipart.MultipartFile;

public class ExhibitionBean { //
	private int no;
	private String title;
	private String startday;
	private String endday;
	private String museum;
	private String place;
	private String painter;
	private String img;
	private String content;
	private String sponsor;
	private int count;
	private int price;
	private int readcount;
	private int onedayaccept;

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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStartday() {
		return startday;
	}

	public void setStartday(String startday) {
		this.startday = startday;
	}

	public String getEndday() {
		return endday;
	}

	public void setEndday(String endday) {
		this.endday = endday;
	}

	public String getMuseum() {
		return museum;
	}

	public void setMuseum(String museum) {
		this.museum = museum;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getPainter() {
		return painter;
	}

	public void setPainter(String painter) {
		this.painter = painter;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSponsor() {
		return sponsor;
	}

	public void setSponsor(String sponsor) {
		this.sponsor = sponsor;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public int getOnedayaccept() {
		return onedayaccept;
	}

	public void setOnedayaccept(int onedayaccept) {
		this.onedayaccept = onedayaccept;
	}

	
	
	
	
}
