<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
 <head> 
 <title>�����ȣ ã��</title> 
 <style type="text/css"> 
 <!-- 
    BODY, table, tr, td, font,input, textarea, select 
     { 
         font-family: ����; 
         font-size: 9pt; 
     } 
 --> 
 </style><script Language="JavaScript"> 
 <!-- 
function Zip_search() 
 { 
     if (document.Zip.address.value.length == 0) { 
         alert("ã���ô� ���̸��� �Է��Ͻÿ�."); 
   document.Zip.address.focus(); 
   return false; 
     } 
     else{ 
   document.Zip.action="joinzip.jsp"; 
         document.Zip.submit(); 
   return true; 
     } 
 } 
 function Cancel() { self.close(); } 
 //--> 
 </script> 
 </head> 

 <body  onload="document.Zip.address.focus()"> 

 <center> 
 <font color=Green size=3>�����ȣ�˻� - Step 1/2</font> 
 <hr size=0 width=90%> 
 <font>ã���ô� ��/��/��/�� �̸��� �Է��ϼ���.<br> 
��) '��ŵ�' , '��' , '��赿'</font> 
 <p> 
 <form method="POST" name="Zip" onSubmit="return Zip_search();"> 
 <hr size=0 width=90%> 
 <input type="text" name="address" size="20" maxlength="20" value="" style='border:solid 1;'> 
 <hr size=0 width=90%> 
 <IMG SRC="./img/ok.gif" BORDER=0 hspace=0 alt="Ȯ��" OnClick="Zip_search();"> 
 </form> 
 </center> 

 </body> 
 </html>