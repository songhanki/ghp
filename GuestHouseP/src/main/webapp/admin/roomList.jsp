<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>숙소 관리</h2>
<div>
<select></select>
<input type="text" />
<input type="button" value="검색"/>
</div>
<div>
<input type="button" value="등록"/>

</div>
<div>
	<table>
		<thead>
			<tr>
				<th></th>
				<th>숙소명</th>
				<th>예약호실 리스트</th>
				<th>숙소위치</th>
				<th>숙소 연락처</th>
				<th>가격</th>
			</tr>
		</thead>
		<tbody>
		
  			<c:forEach var="result" items="${result}" varStatus="status">
			<tr>
				<td>${status.index+1 }</td>
				<td>${result.rmName}</td>
				<td>
					<c:forEach var="rmRoom" items="${result.rmRoom}" varStatus="status1">
						${rmRoom.rmRoom}
					</c:forEach>
				</td>
				<td>${result.rmLoc}</td>
				<td>${result.rmPhone}</td>
				<td>${result.minPrice} ~ ${result.maxPrice}</td>
			</tr>
  			</c:forEach>

			
		</tbody>
	</table>
</div>
</body>
</html>