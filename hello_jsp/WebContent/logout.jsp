<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>로그아웃</title>
	</head>
	<body>
		로그아웃되었습니다.
		<%
		session.removeAttribute("id");
		session.removeAttribute("name");
		session.removeAttribute("pw");
		%>
		<a href="login.jsp">로그인화면 가기</a>
		
	</body>
</html>