<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
		Connection connection;
		Statement statement;
		ResultSet resultSet;
		
		String name, id, pw, phone2, phone3;
		id = (String)session.getAttribute("id");
		
		String query = "select * from member where id = '" + id + "'";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
		statement = connection.createStatement();
		resultSet = statement.executeQuery(query);
		
		while (resultSet.next()) {
			name = resultSet.getString("name");
			pw = resultSet.getString("pw");
			phone2 = resultSet.getString("phone2");
			phone3 = resultSet.getString("phone3");
			
		}
		
		%>
		<form action="Modified" method="post">
			Name <input type="text" name="name" size=10><br>
			ID <%= id %><br>
			PW <input type="password" name="pw" size="20"><br>
			Phone 010 - <input type="text" name="phone2" size="4"> - <input type="text" name="phone3" size="4"><br>
			<input type="submit" value="Modified">
			<input type="reset" value="Reset">
		</form>
	</body>
</html>