<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 오토포커스</title>
</head>
<body>
    <form action="">
    <fieldset>
     <legend> 개인 정보 입력</legend>
     
     <ol>
     	<li>
     	   <label for="username">이름</label>
     	   <input id=username type="text" placeholder="8자 미만 공백없이" autofocus required name="username" />
     	
     	</li>
     	<li>
     	   <label for="email">메일주소</label>
     	   <input id="email" type="email" placeholder="sample@naver.com" autofocus required name="email" />
     	
     	</li>
     	<li>
     	   <label for="phone">전화번호</label>
     	   <input id="phone" type="phone" placeholder="02)1111-1111" autofocus required name="phone" />
     	
     	</li>
     </ol>
    </fieldset>
    
    <fieldset>
       <button type="submit"> 예약하기</button>
    </fieldset>
    
    
    
    
    </form>

</body>
</html>