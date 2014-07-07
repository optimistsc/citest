<%@page import="com.kshop.shop.model.ItemDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String root= request.getContextPath(); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
img {
	border-color: white;
}
</style>
<script type="text/javascript" src="<%=root%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=root%>/js/bootstrap-select.min.js"></script>
<link href="<%=root%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<%=root%>/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
<link href="<%=root%>/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript">
	function goPage(pg) {
		location.href="${to2}.do?category1=${ca1}&category2=${ca2}&pg="+pg+"&to=${to2}" ;
	}
</script>
</head>
<body>
	<center>
		<div>
			<img src="${pageContext.request.contextPath}/img/cate_main.jpg" />
		</div>
		<br>
	</center>
	<div style="position: relative; left: 20%;">
		<img src="${pageContext.request.contextPath}/img/cate_best.jpg" width="200" />
	</div>
	<br>
		<table>
		<tr>
			<c:forEach var="bitem" items="${blist }">
				<td>
					<table>
						<tr>
							<td align="middle"><a
								style="text-decoration: none; color: #c5c5c5"
								href="selectitem.do?itemnum=${bitem.item_code }"><img
									src="${bitem.s_picture} " width="195" height="280" /></a></td>
						</tr>
						<tr>
							<td align="middle"><a
								style="text-decoration: none; color: #c5c5c5"
								href="selectitem.do?itemnum=${bitem.item_code }">${bitem.item_name}</a></td>
						</tr>
						<tr>
							<td align="middle"><font color="#660033"><b>${bitem.price }</b></font></td>
						</tr>
					</table>
				</td>
			</c:forEach>
		</tr>
	</table>



	<br>
	<br>
	<br>



	<br>
	<br>
	<br>

	<table align="center">
		<tr>
			<td width="700">총 <font color="RED">${cnt}</font>개의 상품이 준비되어 있습니다.</td>
			<td><a style="text-decoration: none; color: #c5c5c5" href="hititem2.do?category1=${ca1}&category2=${ca2}&pg=1&to=hititem2">인기상품순</a></td>
			<td>|</td>
			<td><a style="text-decoration: none; color: #c5c5c5" href="newitem2.do?category1=${ca1}&category2=${ca2}&pg=1&to=newitem2">신상품순</a></td>
			<td>|</td>
			<td><a style="text-decoration: none; color: #c5c5c5" href="lowitem2.do?category1=${ca1}&category2=${ca2}&pg=1&to=lowitem2">낮은가격순</a></td>
			<td>|</td>
			<td><a style="text-decoration: none; color: #c5c5c5" href="highitem2.do?category1=${ca1}&category2=${ca2}&pg=1&to=highitem2">높은가격순</a></td>
		</tr>
	</table>

	<br>
	<br>

		<table >
			<tr>
	<c:forEach var="item" items="${list }">
			<td>
			<table>
				<tr>
					<td align="middle"><a
						style="text-decoration: none; color: #c5c5c5" href="selectitem.do?itemnum=${item.item_code }"><img
							src="${item.s_picture} " width="195" height="280" /></a></td>
				</tr>
				<tr>
					<td align="middle"><a
						style="text-decoration: none; color: #c5c5c5" href="selectitem.do?itemnum=${item.item_code }">${item.item_name}</a></td>
				</tr>
				<tr>
					<td align="middle"><font color="#660033"><b>${item.price }</b></font></td>
				</tr>
			</table>
			</td>
		 <c:if test="${item.ro%5 ==0}">
		 	</tr><tr>
		 </c:if>
	</c:forEach>
		</tr>
		</table>
		<div class="pagenavi">
<center>
${page }
</center>
</div>
</body>
</html>