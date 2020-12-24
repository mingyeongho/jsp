<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%!
		String name, id, pw;
		%>
		<%
		name = (String)session.getAttribute("name");
		id = (String)session.getAttribute("id");
		pw = (String)session.getAttribute("pw");
		%>
		
		<%= name %>님 환영합니다.
		<input type="button" value="modified" onclick="location.href='modified.jsp'">
	</body>
</html>