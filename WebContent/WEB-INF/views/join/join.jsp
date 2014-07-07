<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입 페이지</title>
<script type="text/javascript">
	
	function join(){
		document.joinform.submit();
	}

</script>
</head>
<body>
	<h3>회원가입</h3>
	<form action="joinon.do" method="post" name="joinform">
		<table border="1">

			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" /></td>
			</tr>

			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw" /></td>
			</tr>

			<tr>
				<td>비밀번호확인</td>
				<td><input type="password" name="ipass" /></td>
			</tr>

			<tr>
				<td>이름</td>
				<td><input type="text" name="name" /></td>
			</tr>

			<tr>
				<td>주소</td>
				<td><input name="zip1" type="text" /> - <input
					name="zip2" type="text" /> <a href="#none"
					onclick="ZipcodeFinder.Opener.bind('postBtn', 'postcode1', 'postcode2', 'addr1', 'layer', 'city_name', 'state_name');"
					id="postBtn"> 우편번호</a><br /> <input name="addr1" type="text" /><br />
					<input name="addr2" type="text" /></td>
			</tr>

			<tr>
				<td>전화번호</td>
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
				<td>이메일</td>
				<td><input name="email1" type="text" />@
					<select	id="email2" name="email2" onchange="javascript:email(this)">
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
				</select></td>
			</tr>

			<tr>
				<td>생일(ex:19870912)</td>
				<td><input type="text" maxlength="8" name="birth" /></td>
			</tr>

			<tr>
				<td>비밀번호 확인질문</td>
				<td><select name="pwq_code">
						<option value="01">기억에 남는 추억의 장소는?</option>
						<option value="02">자신의 인생 좌우명은?</option>
						<option value="03">자신의 보물 제1호는?</option>
						<option value="04">가장 기억에 남는 선생님 성함은?</option>
						<option value="05">타인이 모르는 자신만의 신체비밀이 있다면?</option>
						<option value="06">추억하고 싶은 날짜가 있다면?</option>
						<option value="07">받았던 선물 중 기억에 남는 독특한 선물은?</option>
						<option value="08">유년시절 가장 생각나는 친구 이름은?</option>
						<option value="09">인상 깊게 읽은 책 이름은?</option>
						<option value="10">읽은 책 중에서 좋아하는 구절이 있다면?</option>
						<option value="11">자신이 두번째로 존경하는 인물은?</option>
						<option value="12">친구들에게 공개하지 않은 어릴 적 별명이 있다면?</option>
						<option value="13">초등학교 때 기억에 남는 짝꿍 이름은?</option>
						<option value="14">다시 태어나면 되고 싶은 것은?</option>
						<option value="15">내가 좋아하는 캐릭터는?</option>
				</select><br>
				<input type="text" name="pwq_answer" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button"
					value="회원가입" onclick="javascript:join();">&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="다시쓰기"></td>
			</tr>
		</table>
	</form>
</body>
</html>