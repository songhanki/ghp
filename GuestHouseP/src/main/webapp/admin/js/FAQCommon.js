/**
 * 
 */
function go_create(){
	location="/FAQ/CreateFAQ.do";
	
}

function go_update(faq_seq){
	location="/FAQ/UpdatePageFAQ.do?faq_seq="+faq_seq;
}

function do_delete(faq_seq){
	//location="DeleteRoom.do";
	if( confirm("정말 삭제 하시겠습니까?") ) {
		$.ajax({
		type : "post",
		url  : "/FAQ/DeleteFAQ.do",
		data : 	"faq_seq="+ faq_seq,
		datatype : "text",  // 성공여부 (ok)
		success : function(data) {
			//alert(data);
			if(data>0){
				alert("삭제완료");
				location="/FAQList.do";
			}
		},	
		error : function() {
			alert("삭제 오류발생");
		}
	});
	}
}

function go_list(){
	location="/FAQList.do";
}

function save_faq(){

	var formdata = $("#frm").serialize();
	$.ajax({
		type : "post",
		url  : "/FAQ/InsertFAQ.do",
		data : formdata,
		datatype : "text",  // 성공여부 (ok)
		success : function(data) {
			if (data == "ok") {
				alert("저장완료");
				location="/FAQList.do";
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
		url  : "/FAQ/UpdateFAQ.do",
		data : formdata,
		datatype : "text",  // 성공여부 (ok)
		success : function(data) {
			if (data == "ok") {
				alert("저장완료");
				location="/FAQList.do";
			} else {
				alert("저장실패");
			}
		},	
		error : function() {
			alert("오류발생");
		}
	});

}
