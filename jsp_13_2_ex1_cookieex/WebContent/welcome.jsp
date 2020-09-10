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
		Cookie[] cookie = request.getCookies(); //쿠키의 식별자와 쿠키값 두 개가 저장된다. 
		String cookie_in_value;
		for(int i=0; i < cookie.length; i++)
		{
			cookie_in_value = cookie[i].getValue();
			if(cookie_in_value.equals("abc"))
			{
				out.println(cookie_in_value +  " 님 환영합니다.");
			}
		}
	%>
	
	<a href="logout.jsp">LogOut</a>
</body>
</html>