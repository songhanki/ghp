/**
 * 
 */
/*
function toDetail(rm_name){

	var request = $.ajax({
		type : "post",
		url  : "room/DetailRoom.do",
		data : {'rm_name' : rm_name},
		datatype : "text"
		});
		request.done(function(data) {
	console.log(data);			
		});
      	request.fail(function(data){
   			alert("Error !!! 잠시 후 시도해주세요.");
		});

} 
*/
function go_create(){
	location="room/CreateRoom.do";
}