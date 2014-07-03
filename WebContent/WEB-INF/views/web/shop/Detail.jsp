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
function sum(n1, n2) {
	return n1*n2;
}
</script>
</head>
<body>
<table align="center">

<tr>
   <td rowspan="6"><img src="${itemDto.b_picture}"  width="300" height="400" 

/></td>
   <td width="100" align="center">${itemDto.item_code}</td>
   <td width="300">${itemDto.item_name}</td>
  </tr>
  <tr>
   <td align="center">가격</td>
   <td>${itemDto.price} </td>
  </tr>
  <tr>
   <td align="center">색상</td>
   <td>
   <select name="color">
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
   <select name="quantity">
   <option value="1" onchanged="(1)" selected="selected">1
   <option value="2" onchanged="(2)">2
   <option value="3" onchanged="(3)">3
   <option value="4" onchanged="(4)">4
   <option value="5" onchanged="(5)">5
   <option value="6" onchanged="(6)">6
   <option value="7" onchanged="(7)">7
   <option value="8" onchanged="(8)">8
   <option value="9" onchanged="(9)">9
   </select>
   </td>
  </tr>
  <tr>
   <td align="center"><input type="text" onPropertyChange="JavaScript:sum();"></td>
   <td></td>
  </tr>
</table>
<br>
<br>
<table align="center">
<tr>
<td><a href=><img src="/categorydesign/img/cart_btn.jpg" /></a></td>
<td><a href=><img src="/categorydesign/img/buy_btn.jpg" /></a></td>
</tr>
</table>

</body>
</html>