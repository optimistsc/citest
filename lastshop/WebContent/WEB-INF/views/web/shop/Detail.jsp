<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">

function sum(quantity) {
	   document.getElementById('textfield').value=(quantity.value)*${itemDto.price};
}
function goOrder(){
	
	document.detailForm.action = "${pageContext.request.contextPath}/goOrder.do";
	document.detailForm.submit();	
}
</script>
</head>
<body>
<form action="" method="post" id="detailForm" name="detailForm" >
<input type="hidden" id="itemPic" name="itemPic" value="${itemDto.s_picture}">
<input type="hidden" id="itemCode" name="itemCode" value="${itemDto.item_code}">
<input type="hidden" id="itemName" name="itemName" value="${itemDto.item_name}">
<input type="hidden" id="itemPrice" name="itemPrice" value="${itemDto.price}">


<table align="center">

<tr>
   <td rowspan="6"><img src="${itemDto.s_picture}"  width="300" height="400" 

/></td>
   <td width="100" align="center">${itemDto.item_code}</td>
   <td width="300" id="item_name">${itemDto.item_name}</td>
  </tr>
  <tr>
   <td align="center">가격</td>
   <td>${itemDto.price} </td>
  </tr>
  <tr>
   <td align="center">색상</td>
   <td>
   <select name="color" id="color">
   <option value="0" selected="selected">색상 선택
   <c:forEach var="option" items="${list }">
   <option value="${option.item_color}">${option.item_color} 
   </c:forEach>
   </select>
   </td>
  </tr>
  <tr>
   <td align="center">사이즈</td>
   <td>
   <select name="size">
   <option value="0" selected="selected">사이즈 선택
   <c:forEach var="option" items="${list }">
   <option value="${option.item_size}">${option.item_size} 
   </c:forEach>
   </select>
   </td>
  </tr>
  <tr>
   <td align="center">수량</td>
   <td>
  <select id="quantity" name="quantity" onchange="javascript:sum(this)">
   <option value="1" selected="selected">1
   <option value="2">2
   <option value="3">3
   <option value="4">4
   <option value="5">5
   <option value="6">6
   <option value="7">7
   <option value="8">8
   <option value="9">9
   </td>
  </tr>
  <tr>
   <td align="center"></td>
   <td><input type="text" name="textfield" id="textfield"/></td>
  </tr>
</table>
<br>
<br>
<table align="center">
<tr>
<td><a href=><img src="${pageContext.request.contextPath}/img/cart_btn.jpg" /></a></td>
<td><a href="javascript:goOrder();"><img src="${pageContext.request.contextPath}/img/buy_btn.jpg" /></a></td>
</tr>
<tr>
<td colspan="2">
<img src="${itemDto.b_picture}"/>
</td>
</tr>
</table>
</form>

</body>
</html>