<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">


	img {border:none}
	img{vertical-align : bottom;}
	
	A:link {color:#747474;text-decoration:none; vertical-align: bottom;}
	A:visited {color:#747474; text-decoration:none; vertical-align: bottom;}/* 한번 이상 방문한 링크 처리 */
	


	#content{ margin: 0 auto;
				text-align:left;
				width: 1000px;
				height: 800px;
				padding: 12px 0px 0px 0px;}
	#left{ float: left;
			margin: 0px;
			width: 295px;
			height: 700px;
			background-color: white;
			border-width:1px;
			border-color: #CCCCCC;
			border-style: solid;}
	#right{ float: right;
			margin: 0px;
			width: 695px;
			height: 700px;
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
	<div id="left" align="center">
	<table width="292">
		<tr><td> <font size="6">Admin Page</font></td></tr>
		<tr><td class="size">판매관리</td></tr>
		<tr><td class="size">메인메뉴 관리</td></tr>
		<tr><td class="size">상품관리</td></tr>
		<tr><td class="size">카테고리 관리</td></tr>
		<tr><td class="size">-------------</td></tr>
		<tr><td class="size">주문관리</td></tr>
		<tr><td class="size">회원관리</td></tr>
		<tr><td class="size">-------------</td></tr>
		<tr><td class="size">게시판 관리</td></tr>
		<tr><td class="size">-------------</td></tr>
		<tr><td class="size">통계보기</td></tr>
	</table>
	</div>
	
	<div id="right" align="center">
	<table border="1" width="692">
		<tr align="center" height="100"><td colspan="2"><font size="6">관리자 페이지</font></td></tr>
		<tr align="center" height="140">
			<td><font size="5"><a href="">판매관리</a></font></td>
			<td><font size="5"><a href="">메인메뉴 관리</a></font></td>
		</tr>
		<tr align="center" height="140">
			<td><font size="5"><a href="item_list.do?pg=1&key=&word=">상품관리</a></font></td>
			<td><font size="5"><a href="">카테고리 관리</a></font></td>
		</tr>
			<tr align="center" height="140">
			<td><font size="5"><a href="">주문관리</a></font></td>
			<td><font size="5"><a href="">회원관리</a></font></td>
		</tr>
			<tr align="center" height="140">
			<td><font size="5"><a href="">게시판 관리</a></font></td>
			<td><font size="5"><a href="">통계보기</a></font></td>
		</tr>
	</table>
	</div>
</div>

</body>
</html>