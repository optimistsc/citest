<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/file.do">
<table>
	<tr>
		<td>파일</td>
		<td>
		<input type="file" name="file" id="file">
		</td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="등록"></td>
	</tr>
</table>
</form>
<img alt="" src="ftp://211.177.79.92/123.png">
</body>
</html>