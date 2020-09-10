<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int age;
		String str_age;
		str_age = request.getParameter("age");
		
		age = Integer.parseInt(str_age);
	%>
	<%=age%>
	
	<h4>미성년자</h4>
</body>
</html>