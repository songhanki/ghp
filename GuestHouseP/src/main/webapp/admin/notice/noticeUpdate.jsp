<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript" src="../admin/js/noticeCommon.js" ></script>
<link href="../admin/bootstrap-4.6.1/css/bootstrap.min.css" rel="stylesheet">
<script>

</script>
<title>공지사항 수정</title>
</head>
<body>
<div class="modal-body">
  	<form name="frm" id="frm">
  	<input type="hidden" id="nc_seq" name="nc_seq" value="${vo.nc_seq }">
	<table class="table">
		<tbody>
		
			<tr>
				<th scope="col">제목</th>
				<td>
					<input type="text" id="nc_title" name="nc_title" class="form-control" placeholder="공지사항 제목" value="${vo.nc_title }">
				</td>
			</tr>
			<tr>
				<th scope="col">내용</th>
				<td>
					<textarea id="nc_comment" name="nc_comment" class="form-control">${vo.nc_comment }</textarea>
				</td>
			</tr>

		</tbody>
	</table>
	</form>
	<button type="button" class="btn btn-primary" onclick="do_update()">수정</button>
	<button type="button" class="btn btn-secondary" onclick="go_list()">취소</button>
</div>
</body>
</html>