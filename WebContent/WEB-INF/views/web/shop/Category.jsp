<%@page import="com.kshop.shop.model.ItemDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
</head>
<body>
	<center>
		<div>
			<img src="/categorydesign/img/cate_main.jpg" />
		</div>
		<br>
	</center>
	<div style="position: relative; left: 20%;">
		<img src="/categorydesign/img/cate_best.jpg" width="200" />
	</div>
	<br>
	<table align="center">
		<tr>
			<td>
				<table>
					<tr>
						<td align="middle"><a
							style="text-decoration: none; color: #c5c5c5" href=><img
								src="/categorydesign/img/cate_1.jpg" width="200" height="280" /></a></td>
					</tr>
					<tr>
						<td align="middle"><a
							style="text-decoration: none; color: #c5c5c5" href=>���� �尡�� ��</a></td>
					</tr>
					<tr>
						<td align="middle"><font color="#660033"><b>����</b></font></td>
					</tr>
				</table>
			</td>
			<td>
				<table>
					<tr>
						<td align="middle"><a
							style="text-decoration: none; color: #c5c5c5" href=><img
								src="/categorydesign/img/cate_1.jpg" width="200" height="280" /></a></td>
					</tr>
					<tr>
						<td align="middle"><a
							style="text-decoration: none; color: #c5c5c5" href=>���� �尡�� ��</a></td>
					</tr>
					<tr>
						<td align="middle"><font color="#660033"><b>����</b></font></td>
					</tr>
				</table>
			</td>
			<td>
				<table>
					<tr>
						<td align="middle"><a
							style="text-decoration: none; color: #c5c5c5" href=><img
								src="/categorydesign/img/cate_1.jpg" width="200" height="280" /></a></td>
					</tr>
					<tr>
						<td align="middle"><a
							style="text-decoration: none; color: #c5c5c5" href=>���� �尡�� ��</a></td>
					</tr>
					<tr>
						<td align="middle"><font color="#660033"><b>����</b></font></td>
					</tr>
				</table>
			</td>
			<td>
				<table>
					<tr>
						<td align="middle"><a
							style="text-decoration: none; color: #c5c5c5" href=><img
								src="/categorydesign/img/cate_1.jpg" width="200" height="280" /></a></td>
					</tr>
					<tr>
						<td align="middle"><a
							style="text-decoration: none; color: #c5c5c5" href=>���� �尡�� ��</a></td>
					</tr>
					<tr>
						<td align="middle"><font color="#660033"><b>����</b></font></td>
					</tr>
				</table>
			</td>
			<td>
				<table>
					<tr>
						<td align="middle"><a
							style="text-decoration: none; color: #c5c5c5" href=><img
								src="/categorydesign/img/cate_1.jpg" width="200" height="280" /></a></td>
					</tr>
					<tr>
						<td align="middle"><a
							style="text-decoration: none; color: #c5c5c5" href=>���� �尡�� ��</a></td>
					</tr>
					<tr>
						<td align="middle"><font color="#660033"><b>����</b></font></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<br>




	<br>
	<br>
	<br>



	<br>
	<br>
	<br>

	<table align="center">
		<tr>
			<td width="700">�� <font color="RED">${cnt}</font>���� ��ǰ�� �غ�Ǿ� �ֽ��ϴ�.</td>
			<td><a style="text-decoration: none; color: #c5c5c5" href=>�α��ǰ��</a></td>
			<td>|</td>
			<td><a style="text-decoration: none; color: #c5c5c5" href=>�Ż�ǰ��</a></td>
			<td>|</td>
			<td><a style="text-decoration: none; color: #c5c5c5" href=>�������ݼ�</a></td>
			<td>|</td>
			<td><a style="text-decoration: none; color: #c5c5c5" href=>�������ݼ�</a></td>
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
							src="${item.s_picture} " width="200" height="280" /></a></td>
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
		 <c:if test="${item.rownum%5 ==0}">
		 	</tr><tr>
		 </c:if>
	</c:forEach>
		</tr>
		</table>
</body>
</html>