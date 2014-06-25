<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
<table>
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
<table>
	<tr>
		<td>상세코드</td>
		<td><input type="text" id="OPT_CODE" name="OPT_CODE"></td>
	</tr>
	<tr>
		<td>사이즈</td>
		<td><input type="text" id="ITEM_SIZE" name="ITEM_SIZE"></td>
	</tr>
	<tr>
		<td>색상</td>
		<td><input type="text" id="ITEM_COLOR" name="ITEM_COLOR"></td>
	</tr>
	<tr>
		<td>재고수량</td>
		<td><input type="text" id="ITEM_EA" name="ITEM_EA"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="button" id="plus" name="plus" value="+"><input type="button" id="minus" name="minus" value="-"></td>
	</tr>
</table>
<input type="hidden" id="debox" name="debox">
</form>
</body>
</html>