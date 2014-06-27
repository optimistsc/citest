<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>상품 등록</title>
<script type="text/javascript" src="<%=application.getContextPath()%>/js/jquery-1.8.2.js"></script>

<script type="text/javascript">
	
	var box = new Array(0);
	var opt_code = new Array(0);
	var item_size = new Array(0);
	var item_color = new Array(0);
	var item_ea = new Array(0);
	
	// 한 행을 추가 하는 기능
	function addInput(){
	    box.push(box.length);
		opt_code.push("");
		item_size.push("");
		item_color.push("");
		item_ea.push("");
	    display();
	}
	
	// 저장했던 값을 출력
	function display(){
	    document.getElementById('detailI').innerHTML = "";
	    for (var i = 0; i < box.length; i++) {
	        document.getElementById('detailI').innerHTML += createInput(box[i], opt_code[i], item_size[i], item_color[i], item_ea[i]);
	    }
	}
	
	function saveData(name, num, value){
		var nlen = name.length;
		var iname = name.substring(nlen-3, nlen);
		if(iname == "ode") {
			opt_code[num] = value;
		} else if(iname == "ize") {
			item_size[num] = value;
		} else if(iname == "lor") {
			item_color[num] = value;
		} else {
			item_ea[num] = value;
		}
	}
	
	// html 생성하는 곳 
	function createInput(box, opt_code, item_size, item_color, item_ea){
		var boxHtml = "<tr><td colspan='2'><hr></td></tr>";
		boxHtml += "<tr><td width='150'>상세코드</td>";
		boxHtml += "<td><input type='text' maxlength='3' id='list[" + box + "].opt_code' name='list[" + box + "].opt_code' value='" + opt_code + "' onchange='saveData(this.name, " + box + ", this.value)'></td></tr>";
		boxHtml += "<tr><td>사이즈</td>";
		boxHtml += "<td><input type='text' maxlength='5' id='list[" + box + "].item_size' name='list[" + box + "].item_size' value='" + item_size + "' onchange='saveData(this.name, " + box + ", this.value)'></td></tr>";
		boxHtml += "<tr><td>색상</td>";
		boxHtml += "<td><input type='text' maxlength='15' id='list[" + box + "].item_color' name='list[" + box + "].item_color' value='" + item_color + "' onchange='saveData(this.name, " + box + ", this.value)'></td></tr>";
		boxHtml += "<tr><td>재고수량</td>";
		boxHtml += "<td><input type='text' maxlength='9' id='list[" + box + "].item_ea' name='list[" + box + "].item_ea' value='" + item_ea + "' onchange='saveData(this.name, " + box + ", this.value)'></td></tr>";
		return boxHtml;
	}
	
	// 행 삭제
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
    	alert('등록');
    }
    
    function cancel(){
    	alert('취소');
    }
      
</script>

</head>
<body onload="addInput()">
<div align="center">
<form action="" method="post">
<table>
	<tr>
		<td width="150">상품기본코드</td>
		<td><input type="text" id="ITEM_CODE" name="ITEM_CODE" maxlength="6"></td>
	</tr>
	<tr>
		<td>상품명</td>
		<td><input type="text" id="ITEM_NAME" name="ITEM_NAME" maxlength="50"></td>
	</tr>
	<tr>
		<td>제조사</td>
		<td><input type="text" id="COMPANY" name="COMPANY" maxlength="10"></td>
	</tr>
	<tr>
		<td>제조국</td>
		<td><input type="text" id="COUNTRY" name="COUNTRY" maxlength="10"></td>
	</tr>
	<tr>
		<td>브랜드</td>
		<td><input type="text" id="BRAND" name="BRAND" maxlength="15"></td>
	</tr>
	<tr>
		<td>수입여부</td>
		<td><input type="text" id="IMPORTATION" name="IMPORTATION" maxlength="2"></td>
	</tr>
	<tr>
		<td>제품소재</td>
		<td><input type="text" id="METERIAL" name="METERIAL" maxlength="15"></td>
	</tr>
	<tr>
		<td>취급주의</td>
		<td><input type="text" id="ATTENTION" name="ATTENTION" maxlength="1000"></td>
	</tr>
	<tr>
		<td>판매가격</td>
		<td><input type="text" id="PRICE" name="PRICE" maxlength="9"></td>
	</tr>
	<tr>
		<td>작은사진</td>
		<td><input type="text" id="S_PICTURE" name="S_PICTURE" maxlength="500"></td>
	</tr>
	<tr>
		<td>큰사진</td>
		<td><input type="text" id="B_PICTURE" name="B_PICTURE" maxlength="500"></td>
	</tr>
	<tr>
		<td>3차카테고리번호</td>
		<td><input type="text" id="THR_CODE" name="THR_CODE" maxlength="5"></td>
	</tr>
</table>

<table id="detailI">
</table>

<input type="hidden" id="debox" name="debox">
<table>
	<tr>
		<td colspan="2" align="center">
		<input type="button" id="plus" name="plus" value="세부항목 추가" onclick="addInput()">
		<input type="button" id="minus" name="minus" value="세부항목 삭제" onclick="deleteInput()">
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="button" id="plus" name="plus" value="등록" onclick="register()">
		<input type="button" id="minus" name="minus" value="취소" onclick="cancel()">
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>