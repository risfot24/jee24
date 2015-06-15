<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% 
     String name = request.getParameter("name");
     String value = request.getParameter("value");
     
     if(name != null && value != null){
    	 request.setAttribute(name, value);
    	 /* 이렇게 때려 버리면 네임, 밸류 는 웹세계 에서는 ( 클래스 변수 ) 가  된다...( 멤버변수)  */
    	 /*request.setAttribute 쓰면 은 get , response 로 한번 다른 페이지로 전달 할수가 있다.. (인스턴스_)*/
    	 
     
 
     }
 %>   
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>JSP 기본객체의 속성(Attribute)사용하기</title>
<!-- java 의 개념으로 는 용납할수가 없다.. 자바는 property -->
<!--  html 의 개념으로 용납 || jsp(html, java, jquery, jspring)-->

</head>
<body>
<% 
      if(name != null && value != null){
    	  %>
           
           <%=name %> = <%=value %>	
           
          <%
      }else{
    	%>  
         application 객체의 속성 설정안함
      <%
      }
     /*}  */
 %>

	
</body>
</html>