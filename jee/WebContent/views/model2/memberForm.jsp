<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 및 로그인 폼</title>
  <style type="text/css">
  @IMPORT url("../../css/model2/kaup.css");
  /* 그냥 kaup.css 쓴다. */
  </style>

</head>
<body>
   
    <form action="<%=request.getContextPath()%>/model2/join.do" method="post" >
     
     
       <fieldset>
       <legend>회원 가입</legend>
      <table>
      	<tr>
      	    <td> 이름</td>
      	    <td> 
      	       <input type="text" id="name" name="name" placeholder="이름을 입력하세요." />
      	    
      	    </td>
      	
      	</tr>
      	<tr>
      	    <td> ID</td>
      	    <td> 
      	      <input type="text" id="id" name="id" placeholder="ID 값을 입력하세요." />
      	    </td>
      	 
      	</tr>
      	<tr>
      	    <td> PW</td>
      	    <td> 
      	      <input type="text" id="password" name="password" placeholder="PW 값을 입력하세요." />
      	    </td>
      	 
      	</tr>
      	
      	<tr>
      	    <td> 나이</td>
      	    <td> 
      	      <input type="text" id="age" name="age" placeholder="나이 값을 입력하세요." />
      	    </td>
      	 
      	</tr>
      	<tr>
      	    <td> 주소</td>
      	    <td> 
      	      <input type="text" id="address" name="address" placeholder="PW 값을 입력하세요." value="서울시"/>
      	    </td>
      	 
      	</tr>
      	
      	<tr>
      	   <td colspan="2">
      	     <input type="submit" value="전 송"/>
          </td>	
      	</tr>
      </table>
      </fieldset>
   </form >
     
      <form action="<%=request.getContextPath()%>/model2/login.do" method="post">
     
       <fieldset>
       <legend>로그인</legend>
      <table>
      	<tr>
      	    <td> ID </td>
      	    <td> 
      	       <input type="text" id="id" name="id" placeholder="ID 입력" />
      	    </td>
      	
      	</tr>
      	<tr>
      	    <td> PW</td>
      	    <td> 
      	      <input type="text" id="password" name="password" />
      	    </td>
      	 
      	</tr>
      	<tr>
      	   <td colspan="2">
      	     <input type="submit" value="전 송"/>
          </td>	
      	</tr>
      </table>
      </fieldset>
   </form >
   
   

</body>
</html>