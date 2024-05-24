<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, jspboard.dao.*, jspboard.dto.BDto,java.text.SimpleDateFormat" %>    
<%@ include file="../INC/header.jsp" %>
<%@ include file="../INC/aside.jsp" %>
<% 
   String id =request.getParameter("id");
   String mode =request.getParameter("mode");
   String modeText = "삭제";
   if(mode.equals("edit")){
	  modeText = "수정";   
   }
%>
    <section>
       <!-- listbox -->
       <div class="listbox">
               <h2 class="text-center"><%=modeText %></h2>
               <p class="text-center"><%=modeText %>하려면 비밀번호를 입력하세요.</p>
           <div class="pass-box mt-4">
              <form name="passform" id="passform" action="passok.jsp" method="post">
                 <input type="password" id="cpass" name="cpass" class="form-control" placeholder="비밀번호">
                 <div class="btn-box text-center mt-3">
                    <a href="<%=request.getHeader("referer") %>" class="btn btn-warning px-4 mr-2">취소</a>
                    <button type="submit" class="btn btn-success px-4 ml-2"><%=modeText %></button> 
                 </div>
                 <input type="hidden" name="mode" value="<%=mode %>"/>
                 <input type="hidden" name="id" value="<%=id %>"/>
              </form>
           </div>
          
       </div>
    </section>        

<%@ include file="../INC/footer.jsp" %>  