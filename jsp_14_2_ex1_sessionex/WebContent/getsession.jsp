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
		Object temp = session.getAttribute("mySessionName");
		String sess_Name = (String) temp;
		out.println(sess_Name + "<br>");
		
		Object temp2 = session.getAttribute("myNum");
		int sess_Num = (Integer)temp2;
		out.println(sess_Num + "<br>");
		
		session.removeAttribute("mySessionName");
		
		Object temp3 = session.getAttribute("mySessionName");
		String sess_Name2 = (String) temp3;
		out.println(sess_Name2 + "<br>");
		
		String sessId = session.getId();
		out.println(sessId);
		
		int interval = session.getMaxInactiveInterval();
		out.println(interval);
		
		//session.invalidate();
		
		//if(request.isRequestedSessionIdValid()){
		//	out.println("session Valid");
		//}else{
		//	out.println("session invalid");
		//}
	%>
	
</body>
</html>