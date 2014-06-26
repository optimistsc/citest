<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="<%=application.getContextPath()%>/js/jquery-1.8.2.js"></script>

<script type="text/javascript">

	var opt_code = new Array(0);
	var item_size = new Array(0);
	var item_color = new Array(0);
	var item_ea = new Array(0);

	function firstF(){
		document.getElementById('debox').value = 0;
		add();
	}
	
    function add(){
    	var detailLen = document.getElementById('debox').value;
    	document.getElementById('detailI').innerHTML += makeBox(detailLen);
    	document.getElementById('debox').value = ++detailLen;
    }
    
    function del(){
    	alert('d');
    }
    
    function register(){
    	alert('d');
    }
    
    function saveData(name, value){
    	var nlen = name.length;
    	name.substring(0, nlen - 1) = 3;
    	alert(name + ' : ' + value);
    }
    
    function makeBox(i){
//    	var box = "<hr><table><tr><td>상세코드</td><td><input type='text' id='OPT_CODE" + i + "' name='OPT_CODE" + i + "'></td></tr><tr><td>사이즈</td><td><input type='text' id='ITEM_SIZE" + i + "' name='ITEM_SIZE" + i + "'></td></tr><tr><td>색상</td><td><input type='text' id='ITEM_COLOR" + i + "' name='ITEM_COLOR" + i + "'></td></tr><tr><td>재고수량</td><td><input type='text' id='ITEM_EA" + i + "' name='ITEM_EA" + i + "'></td></tr></table>";
    	var box = "<tr><td colspan='2'><hr></td></tr>";
    	box += "<tr><td>상세코드</td>";
    	box += "<td><input type='text' id='opt_code" + i + "' name='opt_code" + i + "' onchange='saveData(this.name, this.value)'></td></tr>";
    	box += "<tr><td>사이즈</td>";
    	box += "<td><input type='text' id='item_size" + i + "' name='item_size" + i + "' onchange='saveData(this.name, this.value)'></td></tr>";
    	box += "<tr><td>색상</td>";
    	box += "<td><input type='text' id='item_color" + i + "' name='item_color" + i + "' onchange='saveData(this.name, this.value)'></td></tr>";
    	box += "<tr><td>재고수량</td>";
    	box += "<td><input type='text' id='item_ea" + i + "' name='item_ea" + i + "' onchange='saveData(this.name, this.value)'></td></tr>";
    	return box;
    	
    	
    	
    }
    
    
    // 저장했던 값을 출력
    function display(){
        document.getElementById('detailI').innerHTML = "";
        for (intI = 0; intI < arrInput.length; intI++) {
            document.getElementById('detailI').innerHTML += createInput(arrInput[intI], arrInputValue[intI], arrfgift_nm[intI], arrqnt_cnt[intI]);
        }
    }
    
    
    // html 생성하는 곳 
    function createInput(id, value, value2, value3){
        //var input = "<input type='text' id='test_" + id + "' onChange='javascript:saveValue(" + id + ",this.value)' value='" + value + "'>";
        //	input += "<a href='#' onclick='del("+id+")'>del</a><br>";
        //   return input;
        var cnt = id + 1;
        var input = "순위:<input type='text' name='rank" + id + "' id='rank" + id + "' value='" + cnt + "'> ";
        input += "<input type='text' onChange='javascript:saveValue2(" + id + ",this.value)' id='fgift_nm" + id + "' name='fgift_nm" + id + "' value='" + value2 + "' />";
        input += " <input type='text' id='qnt_cnt" + id + "' name='qnt_cnt" + id + "' onChange='javascript:saveValue3(" + id + ",this.value)' value='" + value3 + "' /> 개&nbsp; <br>";
        return input;
    }
    
    
    // 행 삭제
    function deleteInput(){
        if (arrInput.length > 0) {
            arrInput.pop();
            arrfgift_nm.pop();
            arrqnt_cnt.pop();
        }
        display();
    }
    
</script>

</head>
<body onload="firstF()">
<form action="" method="post">
<table id="detailI">
	<tr>
		<td>상품기본코드</td>
		<td><input type="text" id="ITEM_CODE" name="ITEM_CODE"></td>
	</tr>
	<tr>
		<td>상품명</td>
		<td><input type="text" id="ITEM_NAME" name="ITEM_NAME"></td>
	</tr>
	<tr>
		<td>제조사</td>
		<td><input type="text" id="COMPANY" name="COMPANY"></td>
	</tr>
	<tr>
		<td>제조국</td>
		<td><input type="text" id="COUNTRY" name="COUNTRY"></td>
	</tr>
	<tr>
		<td>브랜드</td>
		<td><input type="text" id="BRAND" name="BRAND"></td>
	</tr>
	<tr>
		<td>수입여부</td>
		<td><input type="text" id="IMPORTATION" name="IMPORTATION"></td>
	</tr>
	<tr>
		<td>제품소재</td>
		<td><input type="text" id="METERIAL" name="METERIAL"></td>
	</tr>
	<tr>
		<td>취급주의</td>
		<td><input type="text" id="ATTENTION" name="ATTENTION"></td>
	</tr>
	<tr>
		<td>판매가격</td>
		<td><input type="text" id="PRICE" name="PRICE"></td>
	</tr>
	<tr>
		<td>작은사진</td>
		<td><input type="text" id="S_PICTURE" name="S_PICTURE"></td>
	</tr>
	<tr>
		<td>큰사진</td>
		<td><input type="text" id="B_PICTURE" name="B_PICTURE"></td>
	</tr>
	<tr>
		<td>3차카테고리번호</td>
		<td><input type="text" id="THR_CODE" name="THR_CODE"></td>
	</tr>
</table>

<input type="hidden" id="debox" name="debox">
<table>
	<tr>
		<td colspan="2">
		<input type="button" id="plus" name="plus" value="세부항목 추가" onclick="add()">
		<input type="button" id="minus" name="minus" value="세부항목 삭제" onclick="del()">
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="button" id="plus" name="plus" value="등록" onclick="register()">
		<input type="button" id="minus" name="minus" value="취소" onclick="alert('취소 아직 안되거든?')">
		</td>
	</tr>
</table>
</form>
</body>
</html>