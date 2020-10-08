package Admin.model;

public class Notice {
	private	  int noticeno;
	private	String noticetitle;
	private	 String noticecontent;
	private	 int noticerecount;
	public int getNoticeno() {
		return noticeno;
	}
	public void setNoticeno(int noticeno) {
		this.noticeno = noticeno;
	}
	public String getNoticetitle() {
		return noticetitle;
	}
	public void setNoticetitle(String noticetitle) {
		this.noticetitle = noticetitle;
	}
	public String getNoticecontent() {
		return noticecontent;
	}
	public void setNoticecontent(String noticecontent) {
		this.noticecontent = noticecontent;
	}
	public int getNoticerecount() {
		return noticerecount;
	}
	public void setNoticerecount(int noticerecount) {
		this.noticerecount = noticerecount;
	}
	public Notice() {
		super();
	}
	public Notice(int noticeno, String noticetitle, String noticecontent, int noticerecount) {
		super();
		this.noticeno = noticeno;
		this.noticetitle = noticetitle;
		this.noticecontent = noticecontent;
		this.noticerecount = noticerecount;
	}
	
	
}
