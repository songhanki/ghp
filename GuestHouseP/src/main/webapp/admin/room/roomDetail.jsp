<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소상세보기</title>
</head>
<body>
<div>
	<table>
		<tbody>
		<c:forEach var="result" items="${result}" varStatus="status">
			<tr>
				<th>숙소명</th>
				<td>${result.rmName }</td>
			</tr>
			<tr>
				<th>숙소이미지</th>
				<td>${result.rmImg } (이미지경로)</td>
			</tr>
			<tr>
				<th>숙소위치</th>
				<td>${result.rmLoc }</td>
			</tr>
			<tr>
				<th>숙소별 가격</th>
				<td>
					<table>
						<thead>
							<tr>
								<th>숙소실 리스트</th>
								<th>인실</th>
								<th>가격(일 기준)</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="rm_rpp" items="${rm_rpp}" varStatus="status1">
							<tr>
								<td>${rm_rpp.rmRoom }</td>
								<td>${rm_rpp.rmRerson }</td>
								<td>${rm_rpp.rmPrice }</td>
								<td></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</td>
			</tr>
			<tr>
				<th>숙소설명</th>
				<td>${result.rmComment }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>