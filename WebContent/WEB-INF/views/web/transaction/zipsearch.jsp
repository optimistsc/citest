<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%
//String root = request.getContextPath();

//List<ZipDto> list = (List<ZipDto>) request.getAttribute("zipList");
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
<script type="text/javascript">
function dongcheck(){
	if(document.getElementById("dong").value == "") {
		alert("검색 동 입력!");
		return;
	} else {
		document.zipform.action = "${pageContext.request.contextPath}/zipsearch.do";
		document.zipform.submit();
	}
}

function selectzip(z1, z2, address){	
	opener.document.orderInfoForm.zip1.value = z1;
	opener.document.orderInfoForm.zip2.value = z2;
	opener.document.orderInfoForm.addr1.value = address;
	
	self.close();
}
</script>
</head>
<body>
<center>
<form name="zipform" method="post" action="">
<h3>우편번호검색</h3>
<table width="350">
<tr>
	<td class="td3">검색할동을 입력하세요<br>(예: 역삼동, 신촌)</td>
</tr>
<tr>
	<td class="td4">
	<input type="text" name="dong" id="dong" onkeypress="javascript:if(event.keyCode == 13){ dongcheck(); }">
	<input type="button" value="검색" id="btnsearch" onclick="javascript:dongcheck();">
	</td>
</tr>

<%
//if(list == null) {
%>
<tr>
	<td class="td4">
	동이름을 정확히 입력하세요.
	</td>
</tr>
<%
/*
} else {
	int size = list.size();
	if(size == 0) {
		*/
%>
<tr>
	<td class="td4">
	검색 결과가 없습니다.
	</td>
</tr>
<%
/*
	} else {
		for(int i=0;i<size;i++) {
			ZipDto dto = list.get(i);
			*/
%>
<c:forEach var="zip" items="${list}">
<tr>
	<td class="td4">
	
	<a href="javascript:selectzip('${zip.zip1}', '${zip.zip2}', '${zip.sido} ${zip.gugun} ${zip.dong} ${zip.bunji} ');">
	${zip.zip1} - ${zip.zip2} ${zip.sido} ${zip.gugun} ${zip.dong} ${zip.bunji} 
	</a>	
	</td>
</tr>
</c:forEach>
<%
/*
		}
	}
}
*/
%>
</table>
</form>
</center>
</body>
</html>










