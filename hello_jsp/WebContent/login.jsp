<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�α���</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	</head>
	<body>
		<form action="Login" method="post">
			<table>
				<tr>
					<td>���̵�</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>��й�ȣ</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td><input type="submit" value="�α���"></td>
					<td><input type="button" value="ȸ������" onclick="location.href='signin.jsp'"></td>
				</tr>
			</table>
		</form>
	</body>
</html>