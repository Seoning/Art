package board.model;

public class ReplyBean {
	private int reno; //foreign key
	private int no; //primary key
	private String id;
	private String content;
	private String cday;
	private String uday;
	public int getReno() {
		return reno;
	}
	public void setReno(int reno) {
		this.reno = reno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCday() {
		return cday;
	}
	public void setCday(String cday) {
		this.cday = cday;
	}
	public String getUday() {
		return uday;
	}
	public void setUday(String uday) {
		this.uday = uday;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	
}
