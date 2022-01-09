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
<script type="text/javascript" src="../admin/js/roomCommon.js" ></script>
<link href="../admin/bootstrap-4.6.1/css/bootstrap.min.css" rel="stylesheet">
<title>숙소상세보기</title>
</head>
<body>
<div class="modal-body">
	<table class="table">
		<tbody>
		<c:forEach var="result" items="${result}" varStatus="status">
			<tr>
				<th scope="col">숙소명</th>
				<td>${result.rmName }</td>
			</tr>
			<tr>
				<th scope="col">숙소이미지</th>
				<td>${result.rmImg } (이미지경로)</td>
			</tr>
			<tr>
				<th scope="col">숙소위치</th>
				<td>${result.rmLoc }</td>
			</tr>
			<tr>
				<th scope="col">숙소별 가격</th>
				<td>
					<table>
						<thead>
							<tr>
								<th scope="col">숙소실 리스트</th>
								<th scope="col">인실</th>
								<th scope="col">가격(일 기준)</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="rm_rpp" items="${rm_rpp}" varStatus="status1">
							<tr>
								<td>${rm_rpp.rmRoom }</td>
								<td>${rm_rpp.rmPerson }</td>
								<td>${rm_rpp.rmPrice }</td>
								<td></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</td>
			</tr>
			<tr>
				<th scope="col">숙소설명</th>
				<td>${result.rmComment }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<c:forEach var="result" items="${result}" varStatus="status">
	<button type="button" class="btn btn-primary" onclick="go_update('${result.rmName }')">수정</button>
	<button type="button" class="btn btn-danger" onclick="do_delete('${result.rmName }')">삭제</button>
	<button type="button" class="btn btn-secondary" onclick="go_list()">목록으로</button>
	</c:forEach>
</div>
</body>
</html>