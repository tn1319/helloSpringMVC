<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2015학년 2학기 교과목리스트</title>
<style>
	table{
		border-collapse : collapse;
		width : 70%;
	}
	th, td{
		border :1px solid #ccc;
	}
</style>
</head>
<body>
	<center>
	<table>
		<tr>
			<th>수강년도</th>
			<th>학기</th>
			<th>교과코드</th>
			<th>교과목명</th>
			<th>구분</th>
			<th>학점</th>
		</tr>
		<c:forEach var ="classes" items="${detail20152}">
			<tr>
				<td><c:out value="${classes.getYear()}"/></td>
				<td><c:out value="${classes.getSemester()}"/></td>
				<td><c:out value="${classes.getClassId()}"/></td>
				<td><c:out value="${classes.getClassName()}"/></td>
				<td><c:out value="${classes.getDivision()}"/></td>
				<td><c:out value="${classes.getCredit()}"/></td>
			</tr>
		</c:forEach>
	</table>
	</center>
	
</body>
</html>