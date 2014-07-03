<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiels"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
        #wrapper{width:1000px;border:1px solid #eee; margin:0px auto;}
        #sub,#body,#sidebar{float:left;}
        #sub,#sidebar{wisth:150px;}
        #body{width:1000px;height:1500px;}
        #head{height:200px;background:#fff;}
        #foot{clear:both;height:350px;background:#fff;}
</style>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" >
</head>
<body>
<div id="wrapper" style="border:1px solid red">
 <div id="head" style="border:1px solid red">
 	<tiels:insertAttribute name="header"/>
 </div>
  <div id="body" style="border:1px solid red">
  	<tiels:insertAttribute name="content"/>
  </div>
  <div id="foot" style="border:1px solid red">
  	<tiels:insertAttribute name="footer"/>
  </div>
</div>
</body>
</html>