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
	<%!
		private Connection conn;
		private Statement stmt;
		private ResultSet rtset;
		private String driver;
		private String url;
		
		String sql = "select * from member";
	%>
	<%
	try {
		driver = "oracle.jdbc.driver.OracleDriver";
		url = "jdbc:oracle:thin:@localhost:1521:XE";
		Class.forName(driver);
		
		conn = DriverManager.getConnection(url, "hr","hr1234");
		stmt = conn.createStatement();
		rtset = stmt.executeQuery(sql);
		
		while(rtset.next())
		{
			String name = rtset.getString("name");
			String id = rtset.getString("id");
			String pw = rtset.getString("pw");
			String phone1 =rtset.getString("phone1");
			String phone2 =rtset.getString("phone2");
			String phone3 =rtset.getString("phone3");
			String gender = rtset.getString("gender");
			
			out.println(name + id + pw + gender + phone1 + phone2 + phone3 + "<br>");
			
			
			
		}
	}catch(Exception e){
		
	}finally {
		try {
			if(stmt != null) stmt.close();
			if(conn != null) conn.close(); 
		}catch(Exception e) {
			
		}
	}
	%>
</body>
</html>