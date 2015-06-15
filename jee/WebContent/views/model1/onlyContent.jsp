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
    
    @IMPORT url("<%=request.getContextPath()%>/css/onlyContent.css");

    </style>

</head>
<body>
<div id="wrap">
     <jsp:include page="header.jsp"/>
      
      <article> 
         <section class="content">
         <h3>콘텐츠
           <br /><br /> 
              </h3>
         </section>
      </article>
      
   <!--  
      <table>
      	<tr>
      		<td></td>
      	</tr>
      </table>
      @IMPORT url("onlyContent.css"); 
      @IMPORT url("<%-- <%= --%>request.getContextPath()<!-- %> --><!-- /views/model1/onlyContent.css"); -->  
      
      -->
</div>

<jsp:include page="footer.jsp" />
</body>
</html>