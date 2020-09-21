<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	#header{
		text-align : center;
	}
	#bottom{
		text-align : center;
	}
	#footer{
		text-align : center;
	}
	#form1, #form2, #form3{
		color : #ff0000;
	}
	
	body{
		background-color:black;
	}
</style>
</head>
<body>
<div id = "header">
	<form action="MemberAdd" method = "post" id = "form1">
		Name : <input type = "text" name = "name" size = "10"><br>
		<br>ID : <input type="text" name = "id" size = "10"><br>
		<br>PW : <input type="password" name = "pw" size = "10"><br>
		<br><select name = "phone1">
			<option>010</option>
			<option>016</option>
		</select>
		- <input type="text" name="phone2" size ="5">
		- <input type="text" name="phone3" size ="5">
		<br>성별 : <input type = "radio" name = "gender" value = "man"> 남자 
		&nbsp; <input type = "radio" name = "gender" value = "woman"> 여자
		<br>
		<br><input type="submit" value = "input">
		
	</form>
	<br>
	</div>
	
	<div id = "bottom">
		<form action ="CheckMember" id = "form2">
			<input type ="submit" value="Check">
		</form>
	</div>
	<br>
	<div id = "footer">
		<form action = "DeleteMember" id = "form3">
			ID : <input type = "text" name = "delete_id" size = "10">
			<input type = "submit" value = "Delete">
		</form>
	</div>
</body>
</html>