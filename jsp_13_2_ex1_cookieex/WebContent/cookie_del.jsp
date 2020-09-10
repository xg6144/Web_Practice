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
	Cookie[] cookie = request.getCookies();
	
	String str_cookie;
	for(int i =0; i < cookie.length; i++){
		
		str_cookie = cookie[i].getName();
		if(str_cookie.equals("cookieN")){
			out.println("name : " + cookie[i].getName()+"<br>");
			cookie[i].setMaxAge(0);
			
			response.addCookie(cookie[i]);
		}
	}
%>

<a href = "cookie_Test.jsp">쿠키확인</a>
</body>
</html>