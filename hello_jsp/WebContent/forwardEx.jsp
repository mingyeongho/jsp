<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>forwardEx.jsp</h2>
		
		<jsp:forward page="paramEx.jsp">
			<jsp:param value="min" name="id"/>
			<jsp:param value="qwe123" name="pw"/>
		</jsp:forward>
	</body>
</html>