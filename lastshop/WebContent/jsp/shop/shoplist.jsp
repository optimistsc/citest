<%@page import="java.util.List"%>
<%@page import="com.kshop.shop.model.ItemDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	String root = request.getContextPath();
	List<ItemDto> itemlist = (List<ItemDto>) request.getAttribute("");
	ItemDto itemdto = (ItemDto)request.getAttribute("");
	
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="<%=root%>/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="<%=root%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<%=root%>/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
</head>
<body>
<div class="itemlist">
<table class="table table-hover">
	<thead>	
		<tr>
			<td>ī�װ�</td>
			<td>��ǰ �⺻�ڵ�</td>
			<td>��ǰ ���ڵ�</td>
			<td>��ǰ��</td>
			<td>����</td>
			<td>������</td>
			<td>�Ǹ� ����</td>
			<td>��� ����</td>
		</tr>
	</thead>
		
<%
int size = itemlist.size();
if(size != 0 ){
	for(int i = 0; i<size ; i++){
		ItemDto dto = itemlist.get(i);
		
%>
	<tbody>
		<tr>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		<td>4</td>
		<td>5</td>
		<td>6</td>
		<td>7</td>
		<td>8</td>
		
		</tr>
	</tbody>		
<%		
//	}
//} else {
	
%>

	<tr>
		<td>��ǰ�� �����ϴ�.</td>
	</tr>


<%
	}
}
%>

</table>
</div>

</body>
</html>