<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>헬로우</title>
</head>
<body>
  <!--  값이 저장될 필요가 없을때 a 태그-->
    <div>
         <a href="<%=request.getContextPath()%>/name/hello.nhn">안녕하세요</a>
      <%--이건    <mark><%=request.getParameter("name") %></mark> 
                             여기에서 파라미터로 하면 불러올수가 없다..   --%>
       <mark><%=request.getAttribute("name") %></mark>  
         
    </div>
	
</body>
</html>