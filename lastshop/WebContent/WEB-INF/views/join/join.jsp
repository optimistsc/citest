<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������ ������</title>
<script type="text/javascript">
	
	function join(){
		document.joinform.submit();
	}

</script>
</head>
<body>
	<h3>ȸ������</h3>
	<form action="joinon.do" method="post" name="joinform">
		<table border="1">

			<tr>
				<td>���̵�</td>
				<td><input type="text" name="id" /></td>
			</tr>

			<tr>
				<td>��й�ȣ</td>
				<td><input type="password" name="pw" /></td>
			</tr>

			<tr>
				<td>��й�ȣȮ��</td>
				<td><input type="password" name="ipass" /></td>
			</tr>

			<tr>
				<td>�̸�</td>
				<td><input type="text" name="name" /></td>
			</tr>

			<tr>
				<td>�ּ�</td>
				<td><input name="zip1" type="text" /> - <input
					name="zip2" type="text" /> <a href="#none"
					onclick="ZipcodeFinder.Opener.bind('postBtn', 'postcode1', 'postcode2', 'addr1', 'layer', 'city_name', 'state_name');"
					id="postBtn"> �����ȣ</a><br /> <input name="addr1" type="text" /><br />
					<input name="addr2" type="text" /></td>
			</tr>

			<tr>
				<td>��ȭ��ȣ</td>
				<td><select name="tel1" id="tel1" >
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
				</select>-<input name="tel2" maxlength="4" type="text" />- <input name="tel3"
					maxlength="4" type="text" />
			</tr>

			<tr>
				<td>�̸���</td>
				<td><input name="email1" type="text" />@
					<select	id="email2" name="email2" onchange="javascript:email(this)">
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
				</select></td>
			</tr>

			<tr>
				<td>����(ex:19870912)</td>
				<td><input type="text" maxlength="8" name="birth" /></td>
			</tr>

			<tr>
				<td>��й�ȣ Ȯ������</td>
				<td><select name="pwq_code">
						<option value="01">��￡ ���� �߾��� ��Ҵ�?</option>
						<option value="02">�ڽ��� �λ� �¿����?</option>
						<option value="03">�ڽ��� ���� ��1ȣ��?</option>
						<option value="04">���� ��￡ ���� ������ ������?</option>
						<option value="05">Ÿ���� �𸣴� �ڽŸ��� ��ü����� �ִٸ�?</option>
						<option value="06">�߾��ϰ� ���� ��¥�� �ִٸ�?</option>
						<option value="07">�޾Ҵ� ���� �� ��￡ ���� ��Ư�� ������?</option>
						<option value="08">������� ���� �������� ģ�� �̸���?</option>
						<option value="09">�λ� ��� ���� å �̸���?</option>
						<option value="10">���� å �߿��� �����ϴ� ������ �ִٸ�?</option>
						<option value="11">�ڽ��� �ι�°�� �����ϴ� �ι���?</option>
						<option value="12">ģ���鿡�� �������� ���� � �� ������ �ִٸ�?</option>
						<option value="13">�ʵ��б� �� ��￡ ���� ¦�� �̸���?</option>
						<option value="14">�ٽ� �¾�� �ǰ� ���� ����?</option>
						<option value="15">���� �����ϴ� ĳ���ʹ�?</option>
				</select><br>
				<input type="text" name="pwq_answer" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button"
					value="ȸ������" onclick="javascript:join();">&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="�ٽþ���"></td>
			</tr>
		</table>
	</form>
</body>
</html>