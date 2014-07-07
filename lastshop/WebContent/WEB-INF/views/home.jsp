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
				padding: 12px 0px 0px 0px;}
	#top{ 	margin: 0px;
			width: 998px;
			height: 420px;
			background-color: white;
			border-width:0px;
			border-color: #CCCCCC;
			border-style: solid;}
	#middle{margin: 0px;
			width: 998px;
			
			background-color: white;
			border-width:0px;
			border-color: #CCCCCC;
			border-style: solid;}
	#under{margin: 0px;
			width: 998px;
			height: 340px;
			background-color: white;
			border-width:0px;
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
	<!-- 메인상단(인기상품, 할인상품1~2) -->
	<div id="top">
	<table border="0" width="996" height="418">
		<tr>
			<td rowspan="2">
			<a href=""><img alt="" src="${pageContext.request.contextPath}/resources/img/best.jpg" width="490" height="400"></a>
			</td>
			<td><img alt="" src="${pageContext.request.contextPath}/resources/img/sales1.jpg" width="490" height="198"></a></td>
		</tr>
		<tr>
			<td><img alt="" src="${pageContext.request.contextPath}/resources/img/sales2.jpg" width="490" height="198"></a></td>
		</tr>
	</table>
	</div>
	<!-- 메인중단 (새로운 상품) -->
	<div id="middle">
	
	<table border="0" width="996" height="718">
		<tr>
			<td>
			<c:choose>
			<c:when test="${!empty itemlist}">
		<table>
		새로운 상품
		<tr>
			<c:forEach var="item" items="${itemlist }">
				<td>
					<table>
						<tr>
							<td align="middle"><a
								style="text-decoration: none; color: #c5c5c5"
								href="selectitem.do?itemnum=${item.item_code }"><img
									src="${item.s_picture} " width="200" height="280" /></a></td>
						</tr>
						<tr>
							<td align="middle"><a
								style="text-decoration: none; color: #c5c5c5"
								href="selectitem.do?itemnum=${item.item_code }">${item.item_name}</a></td>
						</tr>
						<tr>
							<td align="middle"><font color="#660033"><b>${item.price }</b></font></td>
						</tr>
					</table>
				</td>
				<c:if test="${item.ro%5 ==0}">
		</tr>
		<tr>
			</c:if>
			</c:forEach>
		</tr>
	</table>
	
			</c:when>
			<c:when test="${empty itemlist}">
			아이템이 없습니다.
			</c:when>
				
			</c:choose>
			</td>
		</tr>
	</table>
	</div>
	<!-- 하단(etc 잡화) -->
	<div id="under">
		<table border="0" width="996" height="338">
			<tr>
				<td>ete, 악세사리</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>
