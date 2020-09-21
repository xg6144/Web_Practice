<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import = "java.util.Enumeration" %>
	<%
		String str_id;
		Enumeration enumeration = session.getAttributeNames();
		while(enumeration.hasMoreElements())
		{
			str_id = enumeration.nextElement().toString(); //Object는 주소값
			String eValue = (String)session.getAttribute(str_id);
			
			if(eValue.equals("abc"))
			{
				out.println(eValue + " Welcome");
			}
		}
	%>
	<a href = "logout.jsp">LogOut</a>
</body>
</html>