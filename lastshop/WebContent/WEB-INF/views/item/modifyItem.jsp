<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ǰ ���</title>
<script type="text/javascript" src="<%=application.getContextPath()%>/js/jquery-1.8.2.js"></script>
<style type="text/css">
	#ltd {text-indent: 300px;}
</style>
<script type="text/javascript">
    
    function cancel(){
    	location.href="${pageContext.request.contextPath}/item_list.do?pg=1&key=&word=";
    }
    
    function viewImage(imageLink){
    	window.open(imageLink, '', '', '');
    }
    
    function uploadCancel(){
    	document.getElementById("file").select();
    	document.selection.clear();
    }
      
</script>

</head>
<body onload="addInput()">
<div align="center">
<form action="${pageContext.request.contextPath}/item_modify.do" method="post" enctype="multipart/form-data">
<table>
	<tr>
		<td id="ltd">��ǰ��</td>
		<td><input type="text" id="item_name" name="item_name" value="${itemDto.item_name }" maxlength="50"></td>
	</tr>
	<tr>
		<td id="ltd">������</td>
		<td><input type="text" id="company" name="company" value="${itemDto.company }" maxlength="10"></td>
	</tr>
	<tr>
		<td id="ltd">������</td>
		<td><input type="text" id="country" name="country" value="${itemDto.country }" maxlength="10"></td>
	</tr>
	<tr>
		<td id="ltd">�귣��</td>
		<td><input type="text" id="brand" name="brand" value="${itemDto.brand }" maxlength="15"></td>
	</tr>
	<tr>
		<td id="ltd">���Կ���</td>
		<td colspan="2">
		<!-- <input type="text" id="importation" name="importation" maxlength="2"> -->
		<select id="importation" name="importation">
			<c:choose>
					<c:when test="${itemDto.importation eq '����'}">
					<option value="����" selected="selected">����</option>
					</c:when>
					<c:otherwise>
					<option value="����">����</option>
					</c:otherwise>
			</c:choose>
			<c:choose>
					<c:when test="${itemDto.importation eq '����'}">
					<option value="����" selected="selected">����</option>
					</c:when>
					<c:otherwise>
					<option value="����">����</option>
					</c:otherwise>
			</c:choose>
		</select>
		</td>
	</tr>
	<tr>
		<td id="ltd">��ǰ����</td>
		<td><input type="text" id="meterial" name="meterial" value="${itemDto.meterial }" maxlength="15"></td>
	</tr>
	<tr>
		<td id="ltd">�������</td>
		<td><input type="text" id="attention" name="attention" value="${itemDto.attention }" maxlength="1000"></td>
	</tr>
	<tr>
		<td id="ltd">�ǸŰ���</td>
		<td><input type="text" id="price" name="price" value="${itemDto.price }" maxlength="9"></td>
	</tr>
	<tr>
		<td id="ltd">��������</td>
		<td>
		<input type="hidden" id="s_picture" name="s_picture" value="${itemDto.s_picture }">
		<input type="button" value="��������" onclick="viewImage('${itemDto.s_picture }')">
		<input type="file" id="file" name="file">
		</td>
		<!-- 
		<td rowspan="2">
		<input type="button" value="÷���ʱ�ȭ" onclick="uploadCancel()">
		</td>
		 -->
	</tr>
	<tr>
		<td id="ltd">ū����</td>
		<td>
		<input type="hidden" id="b_picture" name="b_picture" value="${itemDto.b_picture }">
		<input type="button" value="��������" onclick="viewImage('${itemDto.b_picture }')">
		<input type="file" id="file" name="file">
		</td>
	</tr>
	<tr>
		<td width="400" id="ltd">3��ī�װ�</td>
		<td width="400" colspan="2">
		<select id="thr_code" name="thr_code"><!-- 3�� ī�װ� ������ŭ ��� -->
			<c:forEach var="ThirdCategoryDto" items="${categoryList }">
				<c:choose>
					<c:when test="${ThirdCategoryDto.thr_code eq itemDto.thr_code}">
					<option value="${ThirdCategoryDto.thr_code }" selected="selected">${ThirdCategoryDto.thr_name }</option>
					</c:when>
					<c:otherwise>
					<option value="${ThirdCategoryDto.thr_code }">${ThirdCategoryDto.thr_name }</option>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</select>
		</td>
	</tr>
	<tr>
		<td id="ltd">���ڵ�</td>
		<td><input type='text' maxlength='3' id='opt_code' name='opt_code' value='${itemDto.opt_code }' readonly='readonly'></td>
	</tr>
	<tr>
		<td id="ltd">������</td>
		<td><input type='text' maxlength='5' id='item_size' name='item_size' value='${itemDto.item_size }'></td>
	</tr>
	<tr>
		<td id="ltd">����</td>
		<td><input type='text' maxlength='15' id='item_color' name='item_color' value='${itemDto.item_color }'></td>
	</tr>
	<tr>
		<td id="ltd">������</td>
		<td><input type='text' maxlength='9' id='item_ea' name='item_ea' value='${itemDto.item_ea }'></td>
	</tr>
</table>

<table>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="����">
		<input type="button" id="minus" name="minus" value="���" onclick="cancel()">
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>