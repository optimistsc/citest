<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
img {border-bottom: none;}
img{vertical-align : bottom;}

A:link {color:#747474;text-decoration:none; vertical-align: bottom;}
A:visited {color:#747474; text-decoration:none; vertical-align: bottom;}/* 한번 이상 방문한 링크 처리 */

</style>

</head>
<center>
<body>
<table width="1000px" border="0">
	<tr>
		<td align="right">
		<c:choose>
			<c:when test="${sessionScope.userInfo.state eq '관리자'}">
			<a href="logout.do"><font size="2">로그아웃(${sessionScope.userInfo.name })</a> |
			<a href="adminpage.do">관리자페이지</a> |
			장바구니 |
			주문조회 |
			고객센터 
			</c:when>
			<c:when test="${sessionScope.userInfo.state eq '회원'}">
			<a href="logout.do"><font size="2">로그아웃(${sessionScope.userInfo.name })</a> |
			<a href="mypage.do">마이페이지</a> |
			장바구니 |
			주문조회 |
			고객센터
			</c:when>
			<c:when test="${userInfo==null}">
			<a href="login.do"><font size="2">로그인</a> |
			<a href="mypage.do">회원가입</a> |
			비회원주문조회 |
			고객센터 
			</font>
			</c:when>
		</c:choose>
		
		</td>
	</tr>
	<tr>
		<td><a href="home.do"><img src="${pageContext.request.contextPath}/resources/img/main_logo.jpg" width="400px" height="80px" border=0></a><br/></td>
	</tr>
	<tr>
		<td align="right"><input type="text">
		<a href="" ><img src="${pageContext.request.contextPath}/resources/img/search_btn.jpg" align="middle" ></a>

		</td>
	</tr>
</table>


<ul id="menu">
	<c:forEach var="category1" items="${category1}">
	<li> 
        <a href="salelist1.do?category1=${category1.fir_code} ">${category1.fir_name}</a>
        <ul>
        <c:forEach var="category2" items="${category2}">
        	<c:if test="${ category1.fir_code == category2.fir_code }">
        		<li><a href="salelist2.do?category1=${category1.fir_code}&category2=${category2.sec_code}">${category2.sec_name}</a>
        		 	<ul>
	       			<c:forEach var="category3" items="${category3}">
	        			<c:if test="${ category2.sec_code == category3.sec_code }">
	        				<li><a href="salelist3.do?category1=${category1.fir_code}&category2=${category2.sec_code}&category3=${category3.thr_code}">${category3.thr_name}</a></li>
	        			</c:if>     	
		        	</c:forEach>
	       		 	</ul>
        		</li>
        	</c:if>     	
        </c:forEach>
        </ul>
    </c:forEach>
    </li>
</ul>

</body>
</center>
</html>