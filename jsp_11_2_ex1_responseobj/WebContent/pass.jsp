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
		String pass_age;
		
		pass_age = request.getParameter("age");
		age = Integer.parseInt(pass_age);
		
		out.println("나이는 : " + age + " 성인입니다." + "<br>");
	%>
	<h3>Adult</h3>
</body>
</html>