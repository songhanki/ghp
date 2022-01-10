package ghp.service;

public class RoomListVO {

	int rm_seq;
	String rm_name;
	String rm_img;
	String rm_loc;
	String rm_room;
	int rm_person;
	int rm_price;
	String rm_comment;
	
	String sloc;
	String sperson;
	String keyword;

	int page_no = 1;
	int s_no = 1;
	int e_no = 10;
	
	
	
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

	public String getSloc() {
		return sloc;
	}

	public void setSloc(String sloc) {
		this.sloc = sloc;
	}

	public String getSperson() {
		return sperson;
	}

	public void setSperson(String sperson) {
		this.sperson = sperson;
	}


	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getRm_seq() {
		return rm_seq;
	}

	public void setRm_seq(int rm_seq) {
		this.rm_seq = rm_seq;
	}

	public String getRm_name() {
		return rm_name;
	}

	public void setRm_name(String rm_name) {
		this.rm_name = rm_name;
	}

	public String getRm_img() {
		return rm_img;
	}

	public void setRm_img(String rm_img) {
		this.rm_img = rm_img;
	}

	public String getRm_loc() {
		return rm_loc;
	}

	public void setRm_loc(String rm_loc) {
		this.rm_loc = rm_loc;
	}

	public String getRm_room() {
		return rm_room;
	}

	public void setRm_room(String rm_room) {
		this.rm_room = rm_room;
	}

	public int getRm_person() {
		return rm_person;
	}

	public void setRm_person(int rm_person) {
		this.rm_person = rm_person;
	}

	public int getRm_price() {
		return rm_price;
	}

	public void setRm_price(int rm_price) {
		this.rm_price = rm_price;
	}

	public String getRm_comment() {
		return rm_comment;
	}

	public void setRm_comment(String rm_comment) {
		this.rm_comment = rm_comment;
	}
	
	
	
}
