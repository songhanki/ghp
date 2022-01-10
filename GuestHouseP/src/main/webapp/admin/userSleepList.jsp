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
<link href="../admin/bootstrap-4.6.1/css/bootstrap.min.css" rel="stylesheet">
<script>
</script>
<title>휴면계정 관리</title>
</head>
<body>
<div class="container">
	<%@ include file="./common/adm_nav.jsp" %>
	  	<div style="margin-bottom:10px;float:left; text-align:left; width:500px;">
	  	
	  		<form name="frm" method="post" action=".do">
	  		<select name="s_field" >
	  			<option value="email" <c:if test="${s_field=='email'}">selected</c:if> >이메일</option>
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
					<th scope="col">이메일</th>
					<th scope="col">마지막에 접속한 날짜</th>
				</tr>
			</thead>
			<tbody>
	  			<c:forEach var="result" items="${result}" varStatus="status">
		  			<tr>
						<td>${status.index+1 }</td>
						<td><c:out value="${result.mb_email}"/></td>
						<td><c:out value="${result.mb_last}"/></td>
					</tr>
	  			</c:forEach>
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