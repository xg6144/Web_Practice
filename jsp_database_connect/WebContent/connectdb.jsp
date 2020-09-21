<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//DataBase에 접속할 수 있는 변수 
		Connection conn = null;
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "hr";
		String pw = "hr1234";
		
		boolean conn_flag = false;
		
		try{
			//오라클드라이버 접속 
			Class.forName(driver);
			//DataBase 에 연결해서 들어오는 값을 확인 
			conn = DriverManager.getConnection(url, user, pw);
			
			conn_flag = true;
			//연결을 끊고 자원을 회수한다. 
			conn.close();
			
		}catch (Exception e){
			conn_flag = false;
			e.printStackTrace();
		}
		
		if(conn_flag == true)
		{
			out.println("Connect");
		}
		else
		{
			out.println("Connect Fail");
		}
	%>
</body>
</html>