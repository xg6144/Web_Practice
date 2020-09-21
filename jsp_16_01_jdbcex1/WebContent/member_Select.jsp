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
		Connection conn;
		Statement statement; //sql구문 저장 
		ResultSet resultSet; //sql 실행결과 저장
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		
		String sql = "select * from member";
		
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "hr", "hr1234");
			
			statement = conn.createStatement();
			
			resultSet = statement.executeQuery(sql);
			
			while(resultSet.next()){
				String id = resultSet.getString("ID");
				String pw = resultSet.getString("PW");
				String name = resultSet.getString("NAME");
				String phonenumber = resultSet.getString("PHONENUMBER");
				
				
				out.println(id + "\t" + name + "\t" + pw + phonenumber);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
</body>
</html>