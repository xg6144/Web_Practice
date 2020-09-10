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
		String id;
		String pw;
	%>
	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		if(id.equals("abc") && pw.equals("1234"))
		{
			//response, request, cookie : HttpServlet 클래스가 만들어 주는 기본 객체
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(60);
			response.addCookie(cookie); //서버가 클라이언트에게 쿠키 생성
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			response.sendRedirect("login.html");
		}
	%>
</body>
</html>