package ghp.service;

public class NoticeListVO {

	private int nc_seq;
	private String nc_title;
	private String nc_comment;
	private String nc_wdate;
	private int nc_view;
	private String nc_writer;
	
	private int page_no = 1;
	private int s_no = 1;
	private int e_no = 10;
	public int getNc_seq() {
		return nc_seq;
	}
	public void setNc_seq(int nc_seq) {
		this.nc_seq = nc_seq;
	}
	public String getNc_title() {
		return nc_title;
	}
	public void setNc_title(String nc_title) {
		this.nc_title = nc_title;
	}
	public String getNc_comment() {
		return nc_comment;
	}
	public void setNc_comment(String nc_comment) {
		this.nc_comment = nc_comment;
	}
	public String getNc_wdate() {
		return nc_wdate;
	}
	public void setNc_wdate(String nc_wdate) {
		this.nc_wdate = nc_wdate;
	}
	public int getNc_view() {
		return nc_view;
	}
	public void setNc_view(int nc_view) {
		this.nc_view = nc_view;
	}
	public String getNc_writer() {
		return nc_writer;
	}
	public void setNc_writer(String nc_writer) {
		this.nc_writer = nc_writer;
	}
	public int getPage_no() {
		return page_no;
	}
	public void setPage_no(int page_no) {
		this.page_no = page_no;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public int getE_no() {
		return e_no;
	}
	public void setE_no(int e_no) {
		this.e_no = e_no;
	}
	

	
	
	
}
