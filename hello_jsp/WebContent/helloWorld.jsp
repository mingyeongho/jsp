<%@ page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Hello JSP</title>
	</head>
	<%-- 주석 --%>
	<body>
		<%
		int i = 0;
		while (true) {
			i++;
			out.println("2 * " + i + " = " + 2*i + "<br>");
			if (i >= 9) {
				break;
			}
		}
		%>
		
		<%!
		int a = 10;
		String str = "ABCDEF";
		%>
		
		<%= a %><br>
		<%= str %>
		
		<%
		int[] iArr = {1,2,3};
		out.println(Arrays.toString(iArr));
		%>
		
	</body>
</html>