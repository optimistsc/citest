<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인 페이지</title>

<style type="text/css">
	body {background-color: #fff}
	#title { margin: 0 auto;
				width: 810px;
				height: 65px;
				margin: 0 auto;
				padding: 80px 0px 0px 0px;}
	#content{ margin: 0 auto;
				text-align:left;
				width: 810px;
				height: 400px;
				padding: 12px 0px 0px 0px;}
	#left{ float: left;
			margin: 50px;
			width: 392px;
			height: 400px;
			background-color: white;
			border-width:1px;
			border-color: #CCCCCC;
			border-style: solid;}
	#right{ float: right;
			margin: 50px;
			width: 392px;
			height: 400px;
			background-color: white;
			border-width:1px;
			border-color: #CCCCCC;
			border-style: solid;}
	#bottom{ clear: both;
				width: 800px;
				height: 40px;
				margin: 0 auto;
				text-align: center;
				padding: 80px 0px 0px 0px;}
	table{ width: 392;
			padding: 10px 0px 0px 0px;
			font-size:9pt;}
	.box{ width: 300px;
			height: 30px}		
	
</style>
</head>
<body>

<script type="text/javascript">alert("아이디 혹은 비밀번호가 맞지 않습니다.");</script>

 
<!-- 상단 -->
<div id="title">
<input type="image" border="0" img src="${pageContext.request.contextPath}/resources/img/loginlogo.jpg">
</div>

<!-- 중단 -->
<div id="contents">
	<div id="left">
	<table border="0">
		<tr><td height="50"><pre> <font size="5" color="#eee">신규가입</font></pre></td></tr>
		<tr><td height="20"></td></tr>
		<tr><td width="390" height="120"><center><img src="${pageContext.request.contextPath}/resources/img/newm.jpg"></center></td></tr>
		<tr><td height="30"></td></tr>
		<tr><td height="125"><center><img src="${pageContext.request.contextPath}/resources/img/join.PNG"></center></td></tr>
	</table>
	</div>
	
	<div id="right">
	
	<table border="0">
	<tr><td colspan=2 height="50"> <pre><font size="5" color="#eee">로그인</font></pre></td></tr>
	<tr><td width="60"><td width="390" height="180">
	<form method="post" action="loginon.do" >
	<b>아이디</b><br/>
	<input type="text" class="box" value="아이디" onfocus="this.value=''" name="id"><br/>
	<font color="9d9d9d">아이디를 입력하여주세요</font><br/><br/>
	<b>비밀번호</b><br/>
	
	<input type="password" class="box" name="pass"><br/>
	<input type="checkbox">로그인 상태유지
	
	</td></td></tr>
	
	<tr><td colspan="2" height="125"><center><input type="image" border="0" src="${pageContext.request.contextPath}/resources/img/login_btn.png">
	</form>
	<br/><br/>
	<a href="">아이디 찾기</a>
	|
	<a href="">비밀번호 찾기</a>
	</center></td></tr>
	</table>
	</div>
</div>

	
</div>
</body>
</html>