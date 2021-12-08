<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휴면계정 관리</title>
</head>
<body>
<h2>휴면계정 관리</h2>
<div>
<select></select>
<input type="text" />
<input type="button" value="검색"/>
</div>
<div></div>
<div>
	<table>
		<thead>
			<tr>
				<th></th>
				<th>이메일</th>
				<th>마지막에 접속한 날짜</th>
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
</div>
</body>
</html>