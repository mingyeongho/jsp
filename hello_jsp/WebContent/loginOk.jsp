<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>로그인 성공</title>
	</head>
	<body>
		
		<%
		String id = (String)session.getAttribute("id");
		String name = (String)session.getAttribute("name");
		%>
		
		<%= name %>님이 로그인 되었습니다.
		<a href="index.jsp">메인화면가기</a>
	</body>
</html>