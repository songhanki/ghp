/**
 * 
 */
function go_create(){
	location="/room/CreateRoom.do";
}
function go_update(rm_name){
	location="/room/UpdateRoom.do?rm_name="+rm_name;
	/*
		$.ajax({
		type : "post",
		url  : "/room/UpdateRoom.do",
		data : {"rm_name":rm_name},
		datatype : "text",  // 성공여부 (ok)
        async: false,
		success : function(data) {
			console.log(data);
		},	
		error : function() {
			alert("오류발생");
		}
	});
	console.log(rm_name);
	*/
}

function do_delete(rm_name){
	//location="DeleteRoom.do";
	if( confirm("정말 삭제 하시겠습니까?") ) {
		$.ajax({
		type : "post",
		url  : "/room/DeleteRoom.do",
		data : 	"rm_name="+ rm_name,
		datatype : "text",  // 성공여부 (ok)
		success : function(data) {
			if(data>0){
				alert("삭제완료");
				location="/RoomList.do";
			}
		},	
		error : function() {
			alert("삭제 오류발생");
		}
	});
	}
}
function go_list(){
	location="/RoomList.do";
}
/**
 * 
 */
function create_table(){
	var html = '';
				
	var rm_room =  $("#rm_room").val();
	var rm_person = $("#rm_person").val();
	var rm_price = $("#rm_price").val();
	//var remove = $("remove").val();

	html += '<tr>';
	html += '<td><input type="text" class="form-control" placeholder="숙소호실(101호)" value="'+rm_room+'"></td>';
	html += '<td><input type="text" class="form-control" placeholder="n인실" value="'+rm_person+'"></td>';
	html += '<td><input type="text" class="form-control" placeholder="10000" value="'+rm_price+'"></td>';
	html += '<td><button type="button" class="btn btn-danger" onclick="delete_table(this)">-</button></td>';
	html += '</tr>';
				
	$("#sub_tbody").append(html);
				
	$("#rm_room").val('');
	$("#rm_person").val('');
	$("#rm_price").val('');
}

function delete_table(obj){
	var tr = $(obj).parent().parent();

	tr.remove();
}

function save_room(){
	var rm_name = $("#rm_name").val();
	var rm_loc = $("#rm_loc").val();
	var rm_comment = $("#rm_comment").val();
	
	var rm_room = $("#rm_room").val();
	var rm_person = $("#rm_person").val();
	var rm_price = $("#rm_price").val();
	var rm_phone = $("#rm_phone").val();
	
	var roomRppObj = new Object();
	var roomObj = new Object();
	
	var rm_rpp_array = new Array();
	var rm_array = new Array();
	

	/*
	if(rm_name.equal("") || rm_loc.equal("") || rm_comment.equal("") ){
		alert("공백");
		return false;
	}
	*/
	
	$('#sub_tbody tr').each(function () {
		var cellItem = $(this).find(":input");
		var itemObj = new Object();
		
		itemObj.rm_room = cellItem.eq(0).val();
		itemObj.rm_person = cellItem.eq(1).val();
		itemObj.rm_price = cellItem.eq(2).val();
		if(itemObj.rm_room == null || itemObj.rm_person == null || itemObj.rm_price == null ){
			alert("공백");
			return false;
		}

		rm_rpp_array.push(itemObj);
	})
	if(rm_room != "" && rm_person != "" && rm_price != "" ){
		
		roomRppObj.rm_room = rm_room;
		roomRppObj.rm_person = rm_person;
		roomRppObj.rm_price = rm_price;
		
		rm_rpp_array.push(roomRppObj);
	}
	
	roomObj.rm_name=rm_name;
	roomObj.rm_loc=rm_loc;
	roomObj.rm_comment=rm_comment;
	roomObj.rm_phone=rm_phone;
	
	rm_array.push(roomObj);
	
	$.ajax({
		type : "post",
		url  : "/room/InsertRoom.do",
		data : {
			rm_rpp : JSON.stringify(rm_rpp_array),
			rm_array : JSON.stringify(rm_array)
		},
		datatype : "text",  // 성공여부 (ok)
        async: false,
		success : function(data) {
			if(data=="ok"){
				alert("저장완료");
				location="/RoomList.do";
			}
		},	
		error : function() {
			alert("저장 오류발생");
		}
	});
	
console.log(JSON.stringify(rm_rpp_array));

}

function do_update(rm_name){
	$.ajax({
		type : "post",
		url  : "/room/DeleteRoom.do",
		data : 	"rm_name="+ rm_name,
		datatype : "text",  // 성공여부 (ok)
		success : function(data) {
			if(data>0){
				save_room();
			}
		},	
		error : function() {
			alert("삭제 오류발생");
		}
	});
	//rm_name 에 대한 전체 삭제 후 다시 insert 시킨다.
}

