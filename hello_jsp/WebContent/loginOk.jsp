<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�α��� ����</title>
	</head>
	<body>
		
		<%
		String id = (String)session.getAttribute("id");
		String name = (String)session.getAttribute("name");
		%>
		
		<%= name %>���� �α��� �Ǿ����ϴ�.
		<a href="index.jsp">����ȭ�鰡��</a>
	</body>
</html>