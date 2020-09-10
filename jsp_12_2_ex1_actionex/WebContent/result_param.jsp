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
		String str_id = request.getParameter("id");
		String str_pw = request.getParameter("pw");
		
		
		out.println(str_id + str_pw);
	%>
	<%=str_id %>
</body>
</html>