<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="<%=root%>/js/jquery-1.8.2.js"></script>
<!-- <script type="text/javascript" src="<%=root%>/js/bootstrap.min.js"></script> -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!-- 
<link href="<%=root%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<%=root%>/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
 -->
<title>Insert title here</title>
<style type="text/css">
.TopTable{}
.TopTable tr th{
	background-color: #e6e6fb;
}

</style>
</head>
<body>

	<div align="center">
		<img src = "<%=root%>/img/basket_process_02.jpg">
	</div>
	
	<div style="height:50px;"></div>
	<form action=""  method="post" id="productForm" name="productForm">
		<input type="hidden" value="${itemcode} name="itemcode">
		<div style="width:60%; margin:auto;" >
			<table class="TopTable" width = "990px"  >
				<tr>
				<th >이미지</th>
				<th>상품명</th>	
				<th>수   량</th> 
				<th>판매가</th>	
				<th>적립금</th> 
				<th>배송비</th>	
				<th>합   계</th>
				</tr>
				<tr align="center">
				<td width="180px"></td>
				<td>상품이름 넣는곳</td>		
				<td width="110px">
				<input type="text" maxlength="2" value="" size="2">
				<input type="button" id="modifyEA" name="modifyEA" value="수정">
				</td>
				<td width="90px">10,000원</td>
				<td width="80px">190원</td>
				<td width="80px">[조건]</td>
				<td width="90px"><b>10,000원</b></td>
				</tr>
			</table>
		</div>
		
	
	<div style="height:50px;"></div>
	
	<!-- 주문합계금액 보이는부분 -->
	<div style="width:60%; margin:auto;" >
		<table width = "100%" style="border: 1.5px dashed" bordercolor="blue">
			<tr>
			<td align="right" style="padding:10px 10px 10px 10px;">
			<b>고객님의 총 주문 금액 합계 금액 입니다.</b><br/><br/>
			<p style="line-height:20px;">
			상품 합계금액 :  ?????원<br/>
			배송비 :  ?????원<br/>
			</p>
			<b>총 주문 합계 금액 :<font color="#990000">  ?????원</font></b>	
			</td>
			</tr>	
		</table>
	</div>
	</form>
	<!-- 주문합계금액 보이는부분 끝-->
	
	<div style="height:50px;"></div>
	
	<!-- 주문자 정보 -->	
	<form action="" method="post" id="orderInfoForm" name="orderInfoForm">
	
	<div style="width:60%; margin:auto;" >	
		<img src = "<%=root%>/img/basket_02_01.jpg">		
		<table width = "100%" style="border-top: 2px solid grey">
			<tr>
				<td width = "15%" height="25px" ><h4>성   명</h4></td>
				<td>				
					<input type="text" placeholder="성명을 입력하세요.">				
				</td>
			</tr>
		</table>
		
		<table width = "100%" style="border-top: 1px solid grey">					
			<tr valign="mid">
				<td rowspan="3" width = "15%" height="25px" ><h4>주   소</h4></td>
				<td>
					<input type="text" id="zip1" name="zip1" readonly="1"  value="" size="3"> - <input type="text" id="zip2" name="zip2" readonly="1"  value="" size="3">
					<input type="button" id="searchzip" name="searchzip" value="우편번호검색">
					<!-- <a href=""><img src ="<%=root%>/img/basket_zip_code.jpg"></a> -->										
				</td>
			</tr>
			<tr><td><input type="text" size="80" id="addr1" name="addr1" value="" readonly="1"></td></tr>
			<tr><td><input type="text" size="80" id="addr2" name="addr2" value="" readonly="1"></td></tr>
		</table>
		
		<table	width = "100%" style="border-top: 1px solid grey">
			<tr>
				<td width = "15%" height="25px"><h4>유선전화</h4></td>
				<td>
					<select id="phone1" name="phone1" >
					<option value="02">02</option>
					<option value="031">031</option>
					<option value="032">032</option>
					<option value="033">033</option>
					<option value="041">041</option>
					<option value="042">042</option>
					<option value="043">043</option>
					<option value="044">044</option>
					<option value="051">051</option>
					<option value="052">052</option>
					<option value="053">053</option>
					<option value="054">054</option>
					<option value="055">055</option>
					<option value="061">061</option>
					<option value="062">062</option>
					<option value="063">063</option>
					<option value="064">064</option>
					<option value="0502">0502</option>
					<option value="0505">0505</option>
					<option value="0506">0506</option>
					<option value="070">070</option>
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>					
					</select> - <input id="phone2" name="phone2" maxlength="4" size="4" value="" type="text" /> - <input id="phone3" name="phone3" maxlength="4" size="4" value="" type="text"  />
				</td>			
			</tr>		
		</table>
		
		<table width = "100%" style="border-top: 1px solid grey">					
			<tr valign="mid">
				<td width = "15%" height="25px" ><h4>휴대전화</h4></td>
				<td>
					<select id="hphone1" name="hphone1" >		
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>					
					</select> - <input id="hphone2" name="hphone2" maxlength="4" size="4" value="" type="text" /> - <input id="hphone3" name="hphone3" maxlength="4" size="4" value="" type="text"  />
				</td>
			</tr>
		</table>
		
		<table width = "100%" style="border-bottom: 2px solid grey; border-top: 1px solid grey">
			<tr>
				<td  width = "15%" height="25px" ><h4>E-mail</h4></td>
				<td>
				<input type="text" id="email1" name="email1" value="" size="13"/> @ <input type="text" readonly="readonly" id="email2" name="email2" value="" size="13"/>
				<select id="email3" name="email3" >
				<option value="" selected="selected">- 이메일 선택 -</option>
				<option value="naver.com">naver.com</option>
				<option value="daum.net">daum.net</option>
				<option value="nate.com">nate.com</option>
				<option value="hotmail.com">hotmail.com</option>
				<option value="yahoo.com">yahoo.com</option>
				<option value="empas.com">empas.com</option>
				<option value="korea.com">korea.com</option>
				<option value="dreamwiz.com">dreamwiz.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="etc">직접입력</option>
				</select>
				</td>			
			</tr>
		</table>	
	</div>
	</form>	
	
	<div style="height:50px;"></div>
	<!-- 배송지 정보 -->
	<form action="" method="post" id="shipInfoForm" name="shipInfoForm">
	<div style="width:60%; margin:auto;" >
		<div>
			<img src = "<%=root%>/img/basket_02_02.jpg">
			<div style="float:right">
			
			<input id="sameaddr" name="radioaddr"value="T" type="radio"  /><b>주문자 정보와 동일</b>
			<input id="newaddr1" name="radioaddr"value="F" type="radio" checked="checked"  /><b>새로운배송지</b>
			
			</div>	
		</div>	
				 		
		<table width = "100%" style="border-top: 2px solid grey">
			<tr>
				<td width = "15%" height="25px" ><h4>성   명</h4></td>
				<td>				
					<input type="text" placeholder="성명을 입력하세요.">				
				</td>
			</tr>
		</table>
		
		<table width = "100%" style="border-top: 1px solid grey">					
			<tr valign="mid">
				<td rowspan="3" width = "15%" height="25px" ><h4>주   소</h4></td>
				<td>
					<input type="text" id="zip1" name="zip1" readonly="1"  value="" size="3"> - <input type="text" id="zip2" name="zip2" readonly="1"  value="" size="3">
					<input type="button" id="searchzip" name="searchzip" value="우편번호검색">
					<!-- <a href=""><img src ="<%=root%>/img/basket_zip_code.jpg"></a> -->										
				</td>
			</tr>
			<tr><td><input type="text" size="80" id="addr1" name="addr1" value="" readonly="1"></td></tr>
			<tr><td><input type="text" size="80" id="addr2" name="addr2" value="" readonly="1"></td></tr>
		</table>
		
		<table	width = "100%" style="border-top: 1px solid grey">
			<tr>
				<td width = "15%" height="25px"><h4>유선전화</h4></td>
				<td>
					<select id="phone1" name="phone1" >
					<option value="02">02</option>
					<option value="031">031</option>
					<option value="032">032</option>
					<option value="033">033</option>
					<option value="041">041</option>
					<option value="042">042</option>
					<option value="043">043</option>
					<option value="044">044</option>
					<option value="051">051</option>
					<option value="052">052</option>
					<option value="053">053</option>
					<option value="054">054</option>
					<option value="055">055</option>
					<option value="061">061</option>
					<option value="062">062</option>
					<option value="063">063</option>
					<option value="064">064</option>
					<option value="0502">0502</option>
					<option value="0505">0505</option>
					<option value="0506">0506</option>
					<option value="070">070</option>
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>					
					</select> - <input id="phone2" name="phone2" maxlength="4" size="4" value="" type="text" /> - <input id="phone3" name="phone3" maxlength="4" size="4" value="" type="text"  />
				</td>			
			</tr>		
		</table>
		
		<table width = "100%" style="border-top: 1px solid grey">					
			<tr valign="mid">
				<td width = "15%" height="25px" ><h4>휴대전화</h4></td>
				<td>
					<select id="hphone1" name="hphone1" >		
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>					
					</select> - <input id="hphone2" name="hphone2" maxlength="4" size="4" value="" type="text" /> - <input id="hphone3" name="hphone3" maxlength="4" size="4" value="" type="text"  />
				</td>
			</tr>
		</table>
		
		<table width = "100%" style="border-top: 1px solid grey; border-bottom: 2px solid grey">
			<tr>
			<td width = "15%" height="25px" ><h4>배송메세지</h4></td>
			<td><textarea id="demsg" name="demsg" rows="3" cols="45" ></textarea> </td>
			<td><font size="2" color="#990000">배송메시지는 택배 기사님이 확인하는 곳입니다.<br>
			다른 요청 문의가 있을 경우 고객센터로 문의 부탁 드립니다.</font></td>
			</tr>
		
		</table>		
	</div>
	</form>
	
	<div style="height:50px;"></div>
		
	<!-- 결제하기버튼 -->
	<div style="width:60%; margin:auto;" text-align="center">
		<div>
			<a href=""><img src = "<%=root%>/img/basket_btn_02.jpg"></a>
		</div>		
	</div>
		
</body>
</html>