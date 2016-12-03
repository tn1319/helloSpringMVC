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
<title>학년/학기별 이수 총 학점</title>
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
			<th>년도</th>
			<th>학기</th>
			<th>이수 학점</th>
			<th>상세보기</th>
		</tr>
		<tr>
			<td>2014</td>
			<td>1</td>
			<td><c:out value="${referclasses20141}"/></td>
			<td><a href="${pageContext.request.contextPath}/detail20141">링크</a></td>
		</tr>
		<tr>
			<td>2014</td>
			<td>2</td>
			<td><c:out value="${referclasses20142}"/></td>
			<td><a href="${pageContext.request.contextPath}/detail20142">링크</a></td>
		</tr>
		<tr>
			<td>2015</td>
			<td>1</td>
			<td><c:out value="${referclasses20151}"/></td>
			<td><a href="${pageContext.request.contextPath}/detail20151">링크</a></td>
		</tr>
		<tr>
			<td>2015</td>
			<td>2</td>
			<td><c:out value="${referclasses20152}"/></td>
			<td><a href="${pageContext.request.contextPath}/detail20152">링크</a></td>
		</tr>
		<tr>
			<td>2016</td>
			<td>1</td>
			<td><c:out value="${referclasses20161}"/></td>
			<td><a href="${pageContext.request.contextPath}/detail20161">링크</a></td>
		</tr>
	</table>
	</center>
	
</body>
</html>