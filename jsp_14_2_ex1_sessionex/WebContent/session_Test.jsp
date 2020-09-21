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
	
	int i = 0;
	while(enumeration.hasMoreElements())
	{
		i++;
		String eName = enumeration.nextElement().toString();
		String eValue = (String)session.getAttribute(eName);
		
		out.println(eName + "<br>" + eValue + "<br>");
	}
	
	if(i==0){
		out.println("Not Session");	
	}
%>
</body>
</html>