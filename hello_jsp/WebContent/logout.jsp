<%@page import="java.util.Enumeration"%>
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
		Enumeration enumeration = session.getAttributeNames();
		while (enumeration.hasMoreElements()) {
			String sName = enumeration.nextElement().toString();
			String sValue = (String)session.getAttribute(sName);
			
			if (sValue.equals("min")) {
				session.removeAttribute(sName);
			}
		}
		%>
		로그아웃 되었습니다.<br>
		<a href="login.html">login</a>
	</body>
</html>