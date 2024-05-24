<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ page errorPage="error.jsp" %>
<%@ page import="java.sql.*, jspboard.dao.JBoardDao" %>   
<% request.setCharacterEncoding("utf-8"); %> 
<jsp:useBean id="db" class="jspboard.dao.DBConnect" scope="page"/>
<jsp:useBean id="bDto" class="jspboard.dto.BDto" scope="page" />
<jsp:setProperty name="bDto" property="*" />


<%
   String cpg = request.getParameter("cpg");
   Connection conn = db.conn;
   JBoardDao dao = new JBoardDao(conn);
   if(bDto.getDepth() > 0){
	   bDto.setRefid(bDto.getRefid());
   }else{
	   bDto.setRefid(bDto.getId());
   }
   bDto.setDepth(bDto.getDepth()+1);
   bDto.setRenum(bDto.getRenum()+1);
   int rs = dao.insertDB(bDto);
%>



<%
/*
  String writer = request.getParameter("writer");
  String pass = request.getParameter("pass");
  String title = request.getParameter("title");
  String content = request.getParameter("content");

  BDto bDto = new BDto();
  bDto.setWriter(writer);
  bDto.setTitle(title);
  bDto.setPass(pass);
  bDto.setContent(content);


  Connection conn = db.conn;
  
  */
  /*
  
  String sql = "insert into jboard (title, content, writer, pass)"
		  +"values(?, ?, ?, ?)";
  PreparedStatement pstmt = conn.prepareStatement(sql);
  pstmt.setString(1, bDto.getTitle());
  pstmt.setString(2, bDto.getContent());
  pstmt.setString(3, bDto.getWriter());
  pstmt.setString(4, bDto.getPass());
  pstmt.executeUpdate();
  pstmt.close();
  conn.close();
  
  */
  //response.sendRedirect("index.jsp");
%>





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
   alert("글을 등록했습니다.");
   location.href="./index.jsp?cpg=<%=cpg%>";
</script>

</head>
<body>
<h1> 데이터가 성공적으로 등록 되었습니다. </h1>
</body>
</html>