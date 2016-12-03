<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.*"%>
<%request.setCharacterEncoding("UTF-8");%>

<html>
<head>
	<title>Home</title>
</head>
<body>
	<p> <a href="${pageContext.request.contextPath}/referSemesterCredit"> 1. 학기별 이수 학점 조회 </a></p>
	<p> <a href="${pageContext.request.contextPath}/referDivisionCredit"> 2. 이수 구분별 학점 조회 </a></p>
	<p> <a href="${pageContext.request.contextPath}/signUp"> 3. 수강 신청하기 </a></p>
	<p> <a href="${pageContext.request.contextPath}/inquiryClass"> 4. 수강 신청 조회 </a></p>
	
</body>
</html>
