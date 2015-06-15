<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!doctype html>
<% 
   //html:5 + tap 키 눌르면됨!!!
%>
<html lang="en">
<head>
 	<meta charset="UTF-8" />
	<title>Only Content Frame</title>
    <style>
    <%-- @IMPORT url("<%=request.getContextPath()%>/views/model1/onlyContent.css"); --%>
    
     @IMPORT url("<%=request.getContextPath()%>/css/onlyContent.css");
    
    </style>

</head>
<body>
      <header>
       <!-- table>tr>td>*3 + tap , td 대신에 th 도 된다! -->
      <h3> 헤더 </h3>
      </header>
      
      <article> 
         <section class="content">
         <h3>콘텐츠</h3>
         </section>
      </article>
      
      <footer>
        <h3> 푸터</h3>
      </footer>
      
      <table>
      	<tr>
      		<td></td>
      	</tr>
      </table>
	
</body>
</html>