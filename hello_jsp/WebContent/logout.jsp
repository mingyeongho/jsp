<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�α׾ƿ�</title>
	</head>
	<body>
		�α׾ƿ��Ǿ����ϴ�.
		<%
		session.removeAttribute("id");
		session.removeAttribute("name");
		session.removeAttribute("pw");
		%>
		<a href="login.jsp">�α���ȭ�� ����</a>
		
	</body>
</html>