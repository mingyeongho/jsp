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
		Object obj1 = session.getAttribute("mySessionName"); // Object type
		String mySessionName = (String)obj1;
		out.println(mySessionName+"<br>");
		
		Object obj2 = session.getAttribute("myNum"); // Object type
		Integer myNum = (Integer)obj2;
		out.println(myNum+"<br>");
		
		out.println("============================<br>");
		
		String sName;
		String sValue;
		Enumeration enumeration = session.getAttributeNames(); // ��� ���� �������� name�� �ҷ���
		while (enumeration.hasMoreElements()) {
			sName = enumeration.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			
			out.println("sName : " + sName + "<br>");
			out.println("sValue : " + sValue + "<br>");
		}
		
		out.println("============================<br>");
		
		String sessionId = session.getId(); // ����ũ�� ���̵� ����.
		out.println("sessionId : " + sessionId + "<br>");
		int sessionInter = session.getMaxInactiveInterval(); // ��ȿ�ð�
		out.println("sessionInter : " + sessionInter + "<br>");
		
		out.println("============================<br>");
		
		session.removeAttribute("mySessionName");
		Enumeration enumeration1 = session.getAttributeNames();
		while (enumeration1.hasMoreElements()) {
			sName = enumeration1.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br>");
			out.println("sValue : " + sValue + "<br>");
		}
		
		out.println("============================<br>");
		
		session.invalidate();
		if (request.isRequestedSessionIdValid()) {
			out.println("session valid");
		} else {
			out.println("session invalid");
		}
		
		%>
	</body>
</html>