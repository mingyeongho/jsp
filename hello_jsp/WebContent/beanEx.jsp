<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="student" class="com.javalec.ex.Student" scope="page"></jsp:useBean>>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:setProperty property="name" name="student" value="mingh"/>
		<jsp:setProperty property="age" name="student" value="23"/>
		<jsp:setProperty property="grade" name="student" value="2"/>
		<jsp:setProperty property="studentNum" name="student" value="9"/>
		
		Name : <jsp:getProperty property="name" name="student"/><br>
		Age : <jsp:getProperty property="age" name="student"/><br>
		Grade : <jsp:getProperty property="grade" name="student"/><br>
		StudentNum : <jsp:getProperty property="studentNum" name="student"/><br>
	</body>
</html>