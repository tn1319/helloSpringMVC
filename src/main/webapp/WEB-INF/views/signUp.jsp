<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="${pageContext.request.contextPath}/signedup">
		<table>
			<tr>
				<th>수강년도</th><th>학기</th><th>교과코드</th><th>교과목명</th><th>구분</th><th>학점</th>
			</tr>
			<tr>
				<td><input name="year" type="text" size="4"/></td>
				<td><input name="semester" type="text" size="2"/></td>
				<td><input name="classId" type="text" size="10"/></td>
				<td><input name="className" type="text"/></td>
				<td><input name="division" type="text" size="6"/></td>
				<td><input name="credit" type="text" size="2"/></td>
			</tr>
			<tr>
				<td colspan="6"><input value="신청하기" type="submit"/></td>
			</tr>
		</table>
	
	</form>
</body>
</html>