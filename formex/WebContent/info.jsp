<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="FormEX" method="post"> 
		이름 : <input type="text" name ="theName" size = "10"><br>
		아이디 : <input type ="text" name = "id" size = "10"><br/>
		비밀번호 : <input type="password" name="pw" size = "10"><br/>
		취 미 : <input type ="checkbox" name = "hobby" value = "read"> 독서 
		<input type="checkbox" name ="hobby" value = "travel"> 여행 
		<input type="checkbox" name = "hobby" value = "cook"> 요리
		<input type="checkbox" name = "hobby" value = "swim"> 수영 <br>
		
		<input type="submit" value=확인> <input type="reset" value="지우기">
	</form> 
	
</body>
</html>