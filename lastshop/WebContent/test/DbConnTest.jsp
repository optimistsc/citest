<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%
   Connection conn = null;
   DataSource ds = null;

   String msg = "";

   try {
      Context ctx = new InitialContext();
      ds = (DataSource) ctx.lookup("java:comp/env/jdbc/oracle");

      conn = ds.getConnection();
      msg = "DBCP ���� ����";
      System.out.println(msg);
   } catch (Exception e) {
      e.printStackTrace();
      msg = "DBCP ���� ����";
      System.out.println(msg);
   } finally {
      try {
         if (conn != null)
            conn.close();
      } catch (Exception ex) {
         ex.printStackTrace();
      }

   }
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
   ���Ȯ�� : <%=msg %>
</body>
</html>