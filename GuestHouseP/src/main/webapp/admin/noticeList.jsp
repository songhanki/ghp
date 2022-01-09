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
<script type="text/javascript" src="./admin/js/noticeCommon.js" ></script>
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
  			<option value="nc_title" <c:if test="${s_field=='nc_title'}">selected</c:if> >제목</option>
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
	  			<c:forEach var="result" items="${result}" varStatus="status">
				<tr onClick="location.href='notice/DetailNotice.do?nc_seq=${result.nc_seq}'"> 
					<th scope="row">${status.index+1 }</th>
					<td>${result.nc_title }</td>
					<td>${result.nc_wdate }</td>
					<td>${result.nc_view }</td>
				</tr>

				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>