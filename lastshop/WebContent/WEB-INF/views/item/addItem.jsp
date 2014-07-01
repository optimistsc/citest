<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ǰ ���</title>
<script type="text/javascript" src="<%=application.getContextPath()%>/js/jquery-1.8.2.js"></script>

<script type="text/javascript">
	
	var box = new Array(0);
	var opt_code = new Array(0);
	var item_size = new Array(0);
	var item_color = new Array(0);
	var item_ea = new Array(0);
	
	// �� ���� �߰� �ϴ� ���
	function addInput(){
	    box.push(box.length);
		opt_code.push("");
		item_size.push("");
		item_color.push("");
		item_ea.push("");
	    display();
	}
	
	// �����ߴ� ���� ���
	function display(){
	    document.getElementById('detailI').innerHTML = "";
	    for (var i = 0; i < box.length; i++) {
	        document.getElementById('detailI').innerHTML += createInput(box[i], opt_code[i], item_size[i], item_color[i], item_ea[i]);
	    }
	}
	
	function saveData(name, num, value){
		var nlen = name.length;
		var iname = name.substring(nlen-3, nlen);
		if(iname == "ize") {
			item_size[num] = value;
		} else if(iname == "lor") {
			item_color[num] = value;
		} else {
			item_ea[num] = value;
		}
	}
	
	// html �����ϴ� �� 
	function createInput(box, opt_code, item_size, item_color, item_ea){
		var boxHtml = "<tr><td colspan='2'><hr></td></tr>";
		boxHtml += "<tr><td width='150'>���ڵ�</td>";
		boxHtml += "<td><input type='text' maxlength='3' id='list[" + box + "].opt_code' name='list[" + box + "].opt_code' value='" + (box+1) + "' readonly='readonly'></td></tr>";
		boxHtml += "<tr><td>������</td>";
		boxHtml += "<td><input type='text' maxlength='5' id='list[" + box + "].item_size' name='list[" + box + "].item_size' value='" + item_size + "' onchange='saveData(this.name, " + box + ", this.value)'></td></tr>";
		boxHtml += "<tr><td>����</td>";
		boxHtml += "<td><input type='text' maxlength='15' id='list[" + box + "].item_color' name='list[" + box + "].item_color' value='" + item_color + "' onchange='saveData(this.name, " + box + ", this.value)'></td></tr>";
		boxHtml += "<tr><td>������</td>";
		boxHtml += "<td><input type='text' maxlength='9' id='list[" + box + "].item_ea' name='list[" + box + "].item_ea' value='" + item_ea + "' onchange='saveData(this.name, " + box + ", this.value)'></td></tr>";
		return boxHtml;
	}
	
	// �� ����
	function deleteInput(){
	    if (box.length > 1) {
	        box.pop();
	    	opt_code.pop();
	    	item_size.pop();
	    	item_color.pop();
	    	item_ea.pop();
	    }
	    display();
	}
    
    function register(){
    	alert('���');
    }
    
    function cancel(){
    	alert('���');
    }
      
</script>

</head>
<body onload="addInput()">
<div align="center">
<form action="${pageContext.request.contextPath}/item_insert.do" method="post">
<table>
	<tr>
		<td>��ǰ��</td>
		<td><input type="text" id="item_name" name="item_name" maxlength="50"></td>
	</tr>
	<tr>
		<td>������</td>
		<td><input type="text" id="company" name="company" maxlength="10"></td>
	</tr>
	<tr>
		<td>������</td>
		<td><input type="text" id="country" name="country" maxlength="10"></td>
	</tr>
	<tr>
		<td>�귣��</td>
		<td><input type="text" id="brand" name="brand" maxlength="15"></td>
	</tr>
	<tr>
		<td>���Կ���</td>
		<td>
		<!-- <input type="text" id="importation" name="importation" maxlength="2"> -->
		<select id="importation" name="importation">
			<option value="����">����</option>
			<option value="����">����</option>
		</select>
		</td>
	</tr>
	<tr>
		<td>��ǰ����</td>
		<td><input type="text" id="meterial" name="meterial" maxlength="15"></td>
	</tr>
	<tr>
		<td>�������</td>
		<td><input type="text" id="attention" name="attention" maxlength="1000"></td>
	</tr>
	<tr>
		<td>�ǸŰ���</td>
		<td><input type="text" id="price" name="price" maxlength="9"></td>
	</tr>
	<tr>
		<td>��������</td>
		<td><input type="text" id="s_picture" name="s_picture" maxlength="500"></td>
	</tr>
	<tr>
		<td>ū����</td>
		<td><input type="text" id="b_picture" name="b_picture" maxlength="500"></td>
	</tr>
	<tr>
		<td width="150">3��ī�װ�</td>
		<td>
		<select id="thr_code" name="thr_code"><!-- 3�� ī�װ� ������ŭ ��� -->
			<c:forEach var="ThirdCategoryDto" items="${categoryList }">
				<option value="${ThirdCategoryDto.thr_code }">${ThirdCategoryDto.thr_name }</option>
			</c:forEach>
		</select>
		</td>
	</tr>
</table>

<table id="detailI">
</table>

<input type="hidden" id="debox" name="debox">
<table>
	<tr>
		<td colspan="2" align="center">
		<input type="button" id="plus" name="plus" value="�����׸� �߰�" onclick="addInput()">
		<input type="button" id="minus" name="minus" value="�����׸� ����" onclick="deleteInput()">
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="���">
		<input type="button" id="minus" name="minus" value="���" onclick="cancel()">
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>