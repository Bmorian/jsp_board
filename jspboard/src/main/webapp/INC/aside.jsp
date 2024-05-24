<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
             <!-- ASIDE-->
            <aside class="mt-3 p-4 bg-white">
                <form name="loginForm" action="login" class="loginform" id="loginform" method="post">
                    <input type="text" class="form-control userid mb-3" id="uid"
                           placeholder="아이디" name="uid" />
                    <input type="password" class="form-control userpass mb-3" id="upass"
                           placeholder="비밀번호" name="upass" /> 
                    <div class="text-right mb-3">
                      <label> 아이디 기억 <input type="checkbox" name="rid" value="rid" id="rid"></label> 
                    </div>
                    <button type="submit" class="btn btn-info btn-block">로그인</button>
                    <a href="join.jsp">회원가입</a>      
                </form>
            </aside>
            <!--/ ASIDE-->



</body>
</html>