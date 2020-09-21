<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String id, password; 
	%>
	<%
		id = request.getParameter("id");
		password = request.getParameter("pw");
		
		if(id.equals("abc") && password.equals("1234"))
		{
			session.setAttribute("id", id);
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			response.sendRedirect("login.html");
		}
	%>
</body>
</html>