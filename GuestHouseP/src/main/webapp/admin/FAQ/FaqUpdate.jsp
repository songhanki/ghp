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
<script type="text/javascript" src="../../admin/js/FAQCommon.js" ></script>
<link href="../../admin/bootstrap-4.6.1/css/bootstrap.min.css" rel="stylesheet">
<script>

</script>
<title>자주하는 질문 수정</title>
</head>
<body>
<div class="modal-body">
  	<form name="frm" id="frm">
  	<input type="hidden" id="faq_seq" name="faq_seq" value="${vo.faq_seq }">
	<table class="table">
		<tbody>
		
			<tr>
				<th scope="col">제목</th>
				<td>
					<input type="text" id="faq_title" name="faq_title" class="form-control" placeholder="자주묻는 질문 제목" value="${vo.faq_title }">
				</td>
			</tr>
			<tr>
				<th scope="col">분류</th>
				<td>
			  		<select class="custom-select" name="faq_category" >
			  			<option value="A" <c:if test="${vo.faq_category=='A'}"> selected</c:if> >예약관련</option>
			  			<option value="B" <c:if test="${vo.faq_category=='B'}"> selected</c:if>>결제관련</option>
			  			<option value="C" <c:if test="${vo.faq_category=='C'}"> selected</c:if>>취소/변경/환불</option>
			  		</select>
				</td>
			</tr>
			
			<tr>
				<th scope="col">답변</th>
				<td>
					<textarea id="faq_comment" name="faq_comment" class="form-control">${vo.faq_comment }</textarea>
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