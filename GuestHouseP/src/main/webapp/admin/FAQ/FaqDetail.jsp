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
<title>자주하는 질문</title>
</head>
<body>
<div class="modal-body">
	<table class="table">
		<tbody>
		
			<tr>
				<th scope="col">제목</th>
				<td>
					${vo.faq_title }
				</td>
			</tr>
			<tr>
				<th scope="col">분류</th>
				<td>
					<c:if test="${vo.faq_category=='A'}">예약관련</c:if>
					<c:if test="${vo.faq_category=='B'}">결제관련</c:if>
					<c:if test="${vo.faq_category=='C'}">취소/변경/환불</c:if>
				</td>
			</tr>
			
			<tr>
				<th scope="col">답변</th>
				<td>
					${vo.faq_comment }
				</td>
			</tr>

		</tbody>
	</table>
	<button type="button" class="btn btn-primary" onclick="go_update('${vo.faq_seq }')">수정</button>
	<button type="button" class="btn btn-danger" onclick="do_delete('${vo.faq_seq }')">삭제</button>
	<button type="button" class="btn btn-secondary" onclick="go_list()">목록으로</button>
</div>
</body>
</html>