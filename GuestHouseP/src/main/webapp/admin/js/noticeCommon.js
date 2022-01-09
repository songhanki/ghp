/**
 * 
 */
function go_create(){
	location="notice/CreateNotice.do";
	
}

function go_update(nc_seq){
	location="/notice/UpdatePageNotice.do?nc_seq="+nc_seq;
}

function do_delete(nc_seq){
	//location="DeleteRoom.do";
	if( confirm("정말 삭제 하시겠습니까?") ) {
		$.ajax({
		type : "post",
		url  : "/notice/DeleteNotice.do",
		data : 	"nc_seq="+ nc_seq,
		datatype : "text",  // 성공여부 (ok)
		success : function(data) {
			//alert(data);
			if(data>0){
				alert("삭제완료");
				location="/NoticeList.do";
			}
		},	
		error : function() {
			alert("삭제 오류발생");
		}
	});
	}
}

function go_list(){
	location="/NoticeList.do";
}

function save_notice(){

	var formdata = $("#frm").serialize();
	$.ajax({
		type : "post",
		url  : "/notice/InsertNotice.do",
		data : formdata,
		datatype : "text",  // 성공여부 (ok)
		success : function(data) {
			if (data == "ok") {
				alert("저장완료");
				location="/NoticeList.do";
			} else {
				alert("저장실패");
			}
		},	
		error : function() {
			alert("오류발생");
		}
	});

}

function do_update(){

	var formdata = $("#frm").serialize();
	$.ajax({
		type : "post",
		url  : "/notice/UpdateNotice.do",
		data : formdata,
		datatype : "text",  // 성공여부 (ok)
		success : function(data) {
			if (data == "ok") {
				alert("저장완료");
				location="/NoticeList.do";
			} else {
				alert("저장실패");
			}
		},	
		error : function() {
			alert("오류발생");
		}
	});

}
