<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="../error/viewErrorMessage.jsp" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>파라미터 출력</title>
	
	
</head>
<body>
	name 파라미터 값 : <%=request.getParameter("name").toUpperCase() %>
	
</body>
</html>