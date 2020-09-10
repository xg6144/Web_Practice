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
		int i = 10;
		String temp = "ABCDEF";
	%>
	
	<%!
		public int mul(int a, int b){
			return a * b;
		}
	%>
	
	<%=	temp%>
	<%="<br>" %>
	<%=mul(10,20) %>
</body>
</html>