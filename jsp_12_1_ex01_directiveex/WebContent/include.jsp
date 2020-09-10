<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> include.jsp file</h1>
	<%@ include file = "include01.jsp" %>
	<%@ page import = "java.util.Arrays" %>
	
	<h1> again ------- include.jsp file</h1>
	<%
		int[] iArr= {10,20,30,40};
		out.println(Arrays.toString(iArr));
	%>
</body>
</html>