package adm.service;

public class TravelReviewCommentVO {
	private int trc_seq;
	private int tr_seq;
	private int trc_cmt_seq;
	private String trc_comment;
	private int trc_depth;
	private String trc_wdate;
	private String mb_email;
	
	
	public int getTrc_seq() {
		return trc_seq;
	}
	public void setTrc_seq(int trc_seq) {
		this.trc_seq = trc_seq;
	}
	public int getTr_seq() {
		return tr_seq;
	}
	public void setTr_seq(int tr_seq) {
		this.tr_seq = tr_seq;
	}
	public int getTrc_cmt_seq() {
		return trc_cmt_seq;
	}
	public void setTrc_cmt_seq(int trc_cmt_seq) {
		this.trc_cmt_seq = trc_cmt_seq;
	}
	public String getTrc_comment() {
		return trc_comment;
	}
	public void setTrc_comment(String trc_comment) {
		this.trc_comment = trc_comment;
	}
	public int getTrc_depth() {
		return trc_depth;
	}
	public void setTrc_depth(int trc_depth) {
		this.trc_depth = trc_depth;
	}
	public String getTrc_wdate() {
		return trc_wdate;
	}
	public void setTrc_wdate(String trc_wdate) {
		this.trc_wdate = trc_wdate;
	}
	public String getMb_email() {
		return mb_email;
	}
	public void setMb_email(String mb_email) {
		this.mb_email = mb_email;
	}
	
}
