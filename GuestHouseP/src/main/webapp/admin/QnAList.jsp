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
<script type="text/javascript" src="../admin/js/QnACommon.js" ></script>
<link href="../admin/bootstrap-4.6.1/css/bootstrap.min.css" rel="stylesheet">
<script>

</script>
<title>문의하기 관리</title>
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
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col"></th>
					<th scope="col">문의 종류</th>
					<th scope="col">문의자 명</th>
					<th scope="col">연락처</th>
					<th scope="col">문의 제목</th>
					<th scope="col">문의 날짜</th>
					<th scope="col">답변여부</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>hksong9276@gmail.com</td>
					<td>2021-07-06</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>2</td>
					<td>hksong9276@gmail.com</td>
					<td>2021-07-06</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>3</td>
					<td>hksong9276@gmail.com</td>
					<td>2021-07-06</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				
			</tbody>
		</table>
			  	<div style="width:700px;margin-left:10px; margin-top:10px; text-align:center;">
		  			<!-- 
		  			<c:forEach var="i" begin="1" end="${vo.total_page }">
		  				<a href="anboardList.do?page_no=${i}">${i}</a> 
		  			</c:forEach>
		  			 -->
		  	</div>
		  	<div style="width:700px;
		  				margin-left:10px; 
		  				margin-top:10px; 
		  				text-align:left;">
		  	</div>
	</div>
</div>
</body>
</html>