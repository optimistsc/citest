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
				<th >�̹���</th>
				<th>��ǰ��</th>	
				<th>��   ��</th> 
				<th>�ǸŰ�</th>	
				<th>������</th> 
				<th>��ۺ�</th>	
				<th>��   ��</th>
				</tr>
				<tr align="center">
				<td width="180px"></td>
				<td>��ǰ�̸� �ִ°�</td>		
				<td width="110px">
				<input type="text" maxlength="2" value="" size="2">
				<input type="button" id="modifyEA" name="modifyEA" value="����">
				</td>
				<td width="90px">10,000��</td>
				<td width="80px">190��</td>
				<td width="80px">[����]</td>
				<td width="90px"><b>10,000��</b></td>
				</tr>
			</table>
		</div>
		
	
	<div style="height:50px;"></div>
	
	<!-- �ֹ��հ�ݾ� ���̴ºκ� -->
	<div style="width:60%; margin:auto;" >
		<table width = "100%" style="border: 1.5px dashed" bordercolor="blue">
			<tr>
			<td align="right" style="padding:10px 10px 10px 10px;">
			<b>�������� �� �ֹ� �ݾ� �հ� �ݾ� �Դϴ�.</b><br/><br/>
			<p style="line-height:20px;">
			��ǰ �հ�ݾ� :  ?????��<br/>
			��ۺ� :  ?????��<br/>
			</p>
			<b>�� �ֹ� �հ� �ݾ� :<font color="#990000">  ?????��</font></b>	
			</td>
			</tr>	
		</table>
	</div>
	</form>
	<!-- �ֹ��հ�ݾ� ���̴ºκ� ��-->
	
	<div style="height:50px;"></div>
	
	<!-- �ֹ��� ���� -->	
	<form action="" method="post" id="orderInfoForm" name="orderInfoForm">
	
	<div style="width:60%; margin:auto;" >	
		<img src = "<%=root%>/img/basket_02_01.jpg">		
		<table width = "100%" style="border-top: 2px solid grey">
			<tr>
				<td width = "15%" height="25px" ><h4>��   ��</h4></td>
				<td>				
					<input type="text" placeholder="������ �Է��ϼ���.">				
				</td>
			</tr>
		</table>
		
		<table width = "100%" style="border-top: 1px solid grey">					
			<tr valign="mid">
				<td rowspan="3" width = "15%" height="25px" ><h4>��   ��</h4></td>
				<td>
					<input type="text" id="zip1" name="zip1" readonly="1"  value="" size="3"> - <input type="text" id="zip2" name="zip2" readonly="1"  value="" size="3">
					<input type="button" id="searchzip" name="searchzip" value="������ȣ�˻�">
					<!-- <a href=""><img src ="<%=root%>/img/basket_zip_code.jpg"></a> -->										
				</td>
			</tr>
			<tr><td><input type="text" size="80" id="addr1" name="addr1" value="" readonly="1"></td></tr>
			<tr><td><input type="text" size="80" id="addr2" name="addr2" value="" readonly="1"></td></tr>
		</table>
		
		<table	width = "100%" style="border-top: 1px solid grey">
			<tr>
				<td width = "15%" height="25px"><h4>������ȭ</h4></td>
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
				<td width = "15%" height="25px" ><h4>�޴���ȭ</h4></td>
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
				<option value="" selected="selected">- �̸��� ���� -</option>
				<option value="naver.com">naver.com</option>
				<option value="daum.net">daum.net</option>
				<option value="nate.com">nate.com</option>
				<option value="hotmail.com">hotmail.com</option>
				<option value="yahoo.com">yahoo.com</option>
				<option value="empas.com">empas.com</option>
				<option value="korea.com">korea.com</option>
				<option value="dreamwiz.com">dreamwiz.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="etc">�����Է�</option>
				</select>
				</td>			
			</tr>
		</table>	
	</div>
	</form>	
	
	<div style="height:50px;"></div>
	<!-- ����� ���� -->
	<form action="" method="post" id="shipInfoForm" name="shipInfoForm">
	<div style="width:60%; margin:auto;" >
		<div>
			<img src = "<%=root%>/img/basket_02_02.jpg">
			<div style="float:right">
			
			<input id="sameaddr" name="radioaddr"value="T" type="radio"  /><b>�ֹ��� ������ ����</b>
			<input id="newaddr1" name="radioaddr"value="F" type="radio" checked="checked"  /><b>���ο�����</b>
			
			</div>	
		</div>	
				 		
		<table width = "100%" style="border-top: 2px solid grey">
			<tr>
				<td width = "15%" height="25px" ><h4>��   ��</h4></td>
				<td>				
					<input type="text" placeholder="������ �Է��ϼ���.">				
				</td>
			</tr>
		</table>
		
		<table width = "100%" style="border-top: 1px solid grey">					
			<tr valign="mid">
				<td rowspan="3" width = "15%" height="25px" ><h4>��   ��</h4></td>
				<td>
					<input type="text" id="zip1" name="zip1" readonly="1"  value="" size="3"> - <input type="text" id="zip2" name="zip2" readonly="1"  value="" size="3">
					<input type="button" id="searchzip" name="searchzip" value="������ȣ�˻�">
					<!-- <a href=""><img src ="<%=root%>/img/basket_zip_code.jpg"></a> -->										
				</td>
			</tr>
			<tr><td><input type="text" size="80" id="addr1" name="addr1" value="" readonly="1"></td></tr>
			<tr><td><input type="text" size="80" id="addr2" name="addr2" value="" readonly="1"></td></tr>
		</table>
		
		<table	width = "100%" style="border-top: 1px solid grey">
			<tr>
				<td width = "15%" height="25px"><h4>������ȭ</h4></td>
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
				<td width = "15%" height="25px" ><h4>�޴���ȭ</h4></td>
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
			<td width = "15%" height="25px" ><h4>��۸޼���</h4></td>
			<td><textarea id="demsg" name="demsg" rows="3" cols="45" ></textarea> </td>
			<td><font size="2" color="#990000">��۸޽����� �ù� ������ Ȯ���ϴ� ���Դϴ�.<br>
			�ٸ� ��û ���ǰ� ���� ��� �������ͷ� ���� ��Ź �帳�ϴ�.</font></td>
			</tr>
		
		</table>		
	</div>
	</form>
	
	<div style="height:50px;"></div>
		
	<!-- �����ϱ��ư -->
	<div style="width:60%; margin:auto;" text-align="center">
		<div>
			<a href=""><img src = "<%=root%>/img/basket_btn_02.jpg"></a>
		</div>		
	</div>
		
</body>
</html>