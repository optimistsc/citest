<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.kshop.shop.model.ItemDto, com.kshop.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%
	String root = request.getContextPath();
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>상품 목록</title>
<script type="text/javascript" src="<%=root%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=root%>/js/bootstrap-select.min.js"></script>
<link href="<%=root%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<%=root%>/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
<link href="<%=root%>/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript">
	function goPage(number) {
		location.href="item_list.do?pg=" + number + "&key=${requestInfoDto.key}&word=${requestInfoDto.word}";
	}
	
	function goAddItem(){
		location.href="item_insert.do";
	}

</script>


<script type="text/javascript">
// bootstrap-select 적용 jquery
$(window).on('load', function ()
		{
			$('.selectpicker').selectpicker(
			{
				'selectedText': 'cat'
		 	});
		});


</script>


</head>
<body>
<div class="itemlist" align="center">
<form action="item_list.do" method="post" >
<h1>상품 목록 <small> KSHOP ITEM</small></h1>
<table class="table table-hover">
	<thead>	
		<tr>
			<td>상품 상세코드</td>
			<td>상품명</td>
			<td>색상</td>
			<td>사이즈</td>
			<td>재고 수량</td>
			<td>판매 가격</td>
		</tr>
	</thead>
		

<c:choose>
<c:when test="${!empty itemList }">
<c:forEach var="itemDto" items="${itemList }">
	<tbody>
		<tr>
		<td>${itemDto.opt_code }</td>
		<td><a href="${pageContext.request.contextPath}/item_modify.do?opt_code=${itemDto.opt_code }">${itemDto.item_name }</a></td>
		<td>${itemDto.item_color }</td>
		<td>${itemDto.item_size }</td>
		<td>${itemDto.item_ea }</td>
		<td>${itemDto.price }</td>
		</tr>
	</tbody>	
</c:forEach>

</c:when>
<c:when test="${empty itemList }">

	<tr>
		<td>상품이 없습니다.</td>
	</tr>
</c:when>
</c:choose>


</table>

</form>
</div>
<div class="pagenavi">
<center>
${page }
</center>
</div>

<div class="container" >
<form action="item_search.do" method="post" name="listForm">
	
	<div class="col-md-1" >
		<select class="form-control" name="key" id="key" style="width:150px">
			<option value="">--선 택--</option>
			<option value="ITEM_NAME">상품 이름</option>
			<option value="OPT_CODE">상품 코드</option>
		</select>
	</div>
	<div class="col-md-1 col-md-offset-1" >
		<input type="text" class="form-control" placeholder="상품명 또는 상품코드 작성해주세요" name="word" id="word" style="width:300px"/>
	</div>
	<div class="col-md-1 col-md-offset-4">
		<input type="submit" class="btn btn-default" value="상품검색"/>
	</div>
	<div class="col-md-1">	
		<input type="button" class="btn btn-primary" value="상품등록" onclick="javascript:goAddItem();"/>
	</div>
	<div class="col-md-1">	
		<input type="button" class="btn btn-warning" value="상품수정" onclick=""/>
	</div>
</form>
</div>

</body>
</html>