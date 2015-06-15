<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그인 실패시 보여지는 페이지</title>
</head>
<body>
    
	<!--  
	 로그인 실패의 원인이
	 ID 값이 틀린 건지, 비번이 틀린건지 알려주세요..
	-->
	
	 <div>
         <a href="<%=request.getContextPath()%>/model2/login.do">안녕하세요</a>
      <%--이건    <mark><%=request.getParameter("name") %></mark> 
                             여기에서 파라미터로 하면 불러올수가 없다..   --%>
       <mark><%=request.getAttribute("id") %></mark>
       <mark><%=request.getAttribute("name") %></mark>  
         
    </div>
</body>
</html>