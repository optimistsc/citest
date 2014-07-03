<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
<style type="text/css">


	img {border:none}
	img{vertical-align : bottom;}
	
	A:link {color:#747474;text-decoration:none; vertical-align: bottom;}
	A:visited {color:#747474; text-decoration:none; vertical-align: bottom;}/* 한번 이상 방문한 링크 처리 */

	#content{ margin: 0 auto;
				text-align:left;
				width: 1000px;
				height: 1498px;
				padding: 12px 0px 0px 0px;}
	#top{ 	margin: 0px;
			width: 998px;
			height: 420px;
			background-color: white;
			border-width:1px;
			border-color: #CCCCCC;
			border-style: solid;}
	#middle{margin: 0px;
			width: 998px;
			height: 720px;
			background-color: white;
			border-width:1px;
			border-color: #CCCCCC;
			border-style: solid;}
	#under{margin: 0px;
			width: 998px;
			height: 340px;
			background-color: white;
			border-width:1px;
			border-color: #CCCCCC;
			border-style: solid;}
	
	table{ width: 392;
			padding: 10px 0px 0px 0px;
			font-size:9pt;}
	.box{ width: 300px;
			height: 30px}		
	.size{ font-size: large;
	}
</style>
</head>
<body>
<div id="content">
	<div id="top">
	<table border="1" width="996" height="418">
		<tr>
			<td rowspan="2">인기상품</td><td>할인상품1</td>
		</tr>
		<tr>
			<td>할인상품2</td>
		</tr>
	</table>
	</div>
	<div id="middle">
	<table border="1" width="996" height="718">
		<tr>
			<td>새로운상품</td>
		</tr>
	</table>
	</div>
	<div id="under">
		<table border="1" width="996" height="338">
			<tr>
				<td>ete, 악세사리</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>
