<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Enumeration enumeration = session.getAttributeNames();
	
		while(enumeration.hasMoreElements())
		{
			String eName = enumeration.nextElement().toString();
			String eValue = (String)session.getAttribute(eName);
			
			if(eValue.equals("abc"))
			{
				session.removeAttribute(eName);
			}
		}
		
		
	%>
	
	<a href = "sessionTest.jsp">Check Session</a>
</body>
</html>