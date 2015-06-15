<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
      String id = request.getParameter("memberId");
      String pw = request.getParameter("memberPw");
   if(id.equals("admin")){
	     response.sendRedirect("now.jsp"); 
   }else{
	   %>
	  
 <!--리퀘스트는 파라미터를 같이가가져오는 녀석 
     리스폰스는 "어디로가는지 " 경로를  알려주는, 지정하는녀석 , (페이지를 보낼때는녀석)   -->    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그인 페이지</title>
</head>
<body>
  잘못된 아이디입니다.
     <%=id %> <%=pw %>
	   
	   <% 
   }
   
   %> 
	
</body>
</html>