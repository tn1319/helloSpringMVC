<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이수 구분별 학점내역</title>
</head>
<body>
	<center>
	<table>
		<tr>
			<th>교필</th>
			<th>핵교A</th>
			<th>핵교B</th>
			<th>일교</th>
			<th>전지</th>
			<th>전기</th>
			<th>전선</th>
			<th>총학점</th>
		</tr>
		<tr>
			<td>${gp}</td>
			<td>${hA}</td>
			<td>${hB}</td>
			<td>${ig}</td>
			<td>${jj}</td>
			<td>${jg}</td>
			<td>${js}</td>
			<td>${all}</td>
		</tr>
	</table>
	</center>
</body>
</html>