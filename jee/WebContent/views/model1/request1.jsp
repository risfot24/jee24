<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>request 객체</title>
	
	
</head>
<body>
<!-- 잘모르지만 Request request = new Request();  
	      이런식으로 만들엇지 라는 생각을 할수가 있다.. -->
<!-- request 기본 객체가 제공하는 기능은 다음과 같이 구분한다.
    * 1. 클라이언트(웹 브라우저)와 관련된 정보읽기 기능  
	  2. 서버ㅇ
	  request 기본 객체가 제공하는 기능
	  1. 브라우저 정보 읽기
	  2. 서버 정보 읽기
	  3. 파라미터 읽기 ★★★★★★
	  4. 헤더 읽기
	  5. 쿠키 읽기
	  6, 속성 처리 기능 ★★★★★ 
	
	  리퀘스트 프로토콜, 
	  jsp : 절대 경로 , html : 상대 경로 !! 
	  
	  html 공간에 자바를 때려 밖았다..
	  
	-->
	 요청URI = <%=request.getRequestURI() %> <br />
     요청정보 인코딩 = <%= request.getCharacterEncoding() %>
     컨텍스트 경로 = <%= request.getContextPath()  %>
	
</body>
</html>