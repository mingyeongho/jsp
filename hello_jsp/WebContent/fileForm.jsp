<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<form enctype="multipart/form-data" action="fileFormOk.jsp" method="post">
			파일 <input type="file" name="file">
			<input type="submit" value="File Upload">
		</form>
	</body>
</html>