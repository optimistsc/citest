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
<title>��ǰ ���</title>
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
// bootstrap-select ���� jquery
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
<h1>��ǰ ��� <small> KSHOP ITEM</small></h1>
<table class="table table-hover">
	<thead>	
		<tr>
			<td>��ǰ ���ڵ�</td>
			<td>��ǰ��</td>
			<td>����</td>
			<td>������</td>
			<td>��� ����</td>
			<td>�Ǹ� ����</td>
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
		<td>��ǰ�� �����ϴ�.</td>
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
			<option value="">--�� ��--</option>
			<option value="ITEM_NAME">��ǰ �̸�</option>
			<option value="OPT_CODE">��ǰ �ڵ�</option>
		</select>
	</div>
	<div class="col-md-1 col-md-offset-1" >
		<input type="text" class="form-control" placeholder="��ǰ�� �Ǵ� ��ǰ�ڵ� �ۼ����ּ���" name="word" id="word" style="width:300px"/>
	</div>
	<div class="col-md-1 col-md-offset-4">
		<input type="submit" class="btn btn-default" value="��ǰ�˻�"/>
	</div>
	<div class="col-md-1">	
		<input type="button" class="btn btn-primary" value="��ǰ���" onclick="javascript:goAddItem();"/>
	</div>
	<div class="col-md-1">	
		<input type="button" class="btn btn-warning" value="��ǰ����" onclick=""/>
	</div>
</form>
</div>

</body>
</html>