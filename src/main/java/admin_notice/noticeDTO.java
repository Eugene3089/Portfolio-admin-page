package admin_notice;

public class noticeDTO {

	@Override
	public String toString() {
		return "noticeDTO [idx=" + idx + ", adminid=" + adminid + ", title=" + title + ", contents=" + contents
				+ ", date=" + date + ", noticeavailable=" + noticeavailable + "]";
	}
	
	int idx;
	String adminid;
	String title;
	String contents;
	String date;
	int noticeavailable;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getAdminid() {
		return adminid;
	}
	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getNoticeavailable() {
		return noticeavailable;
	}
	public void setNoticeavailable(int noticeavailable) {
		this.noticeavailable = noticeavailable;
	}
}
