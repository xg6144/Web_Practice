<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage = "true" %> <!-- 이 페이지가 에러페이지 인것을 알려줌 -->
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style ="text-align : center;">
		<h1>Error 
			<% exception.getMessage(); %>
		</h1>
		<img alt="" src="image/images.jpeg" width = "600" height = "800">
	</div> 
</body>
</html>