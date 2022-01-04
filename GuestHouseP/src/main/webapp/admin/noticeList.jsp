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
<script type="text/javascript" src="./admin/js/noticeList.js" ></script>
<link href="admin/bootstrap-4.6.1/css/bootstrap.min.css" rel="stylesheet">
<script>

</script>
<title>공지사항</title>
</head>
<body>
<div class="container">
	<div>
		<%@ include file="./common/adm_nav.jsp" %>
	</div>
  	<div style="margin-bottom:10px;float:left; text-align:left; width:500px;">
  		<form name="frm" method="post" action=".do">
  		<select name="s_field" >
  			<option value="rm_name" <c:if test="${s_field=='rm_name'}">selected</c:if> >숙소명</option>
  			<option value="rm_loc" <c:if test="${s_field=='rm_loc'}">selected</c:if> >숙소위치</option>
  			<option value="rm_phone" <c:if test="${s_field=='rm_phone'}">selected</c:if> >연락처</option>
  		</select>
  		<input type="text" name="s_text" value="${s_text}">
  		<button type="submit" class="btn btn-primary">검색</button>
  		
  		</form>
  	</div>
	<div>
		<div style="margin-bottom:10px;float:right; text-align:right; width:500px;">
			<button type="button" id="btn_create_room" class="btn btn-primary" onclick="go_create();">등록하기</button>
		</div>
	</div>
	<div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col"></th>
					<th scope="col">제목</th>
					<th scope="col">등록날짜</th>
					<th scope="col">조회</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>hksong9276@gmail.com</td>
					<td>2021-07-06</td>
					<td></td>
				</tr>
				<tr>
					<td>2</td>
					<td>hksong9276@gmail.com</td>
					<td>2021-07-06</td>
					<td></td>
				</tr>
				<tr>
					<td>3</td>
					<td>hksong9276@gmail.com</td>
					<td>2021-07-06</td>
					<td></td>
				</tr>
				
			</tbody>
		</table>
	</div>
</div>
</body>
</html>