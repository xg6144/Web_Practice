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
Cookie[] cookies = request.getCookies();

String str_cookie;
for(int i=0; i < cookies.length; i++){
	
	str_cookie = cookies[i].getName();
	if(str_cookie.equals("cookieN"))
	{
		out.println("cookies[" + i + "] name : " + cookies[i].getName() + "<br>");
		out.println("cookies[" + i + "] value : " + cookies[i].getValue() + "<br>");
	}
}
%>

<a href = "cookie_del.jsp">Delete Cookie</a>
</body>
</html>