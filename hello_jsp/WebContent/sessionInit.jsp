<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
		// �����̳ʿ��� ������ �����Ǹ� ����
		session.setAttribute("mySessionName", "mySessionData");
		session.setAttribute("myNum", 123);
		%>
		
		<a href="sessionget.jsp">session get</a>
	</body>
</html>