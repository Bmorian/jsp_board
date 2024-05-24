<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="java.sql.*, jspboard.dao.MembersDao" %> 
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="db" class="jspboard.dao.DBConnect" scope="page"/>
<jsp:useBean id="mDto" class="jspboard.dto.MDto" scope="page" />
<jsp:setProperty name="mDto" property="*" /> 


<%
   Connection conn = db.conn; 
   MembersDao dao = new MembersDao(conn);
   int rs = dao.insertDB(mDto);

   //response.sendRedirect("index.jsp");
%>






<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
   alert("회원가입이 완료되었습니다..");
   location.href="index.jsp";
</script>

</head>
<body>
<h1> 데이터가 성공적으로 등록 되었습니다. </h1>



</body>
</html>