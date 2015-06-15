<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>404 에러 발생</title>
</head>
<body>
    <strong>요청한 페이지는 존재하지 않습니다: </strong>
     <div>
         <img alt="" src="<%=request.getContextPath()%>/images/404-Error.jpg">
     </div>
<br><br>
    주소를 올바르게 입력했는지 확인해보시기 바랍니다.
   <!-- HTTP: HyperTextTransferProtocol
    HTTP 프로토콜  (이전에는 FTP)     // Alink , Asynch(비동기화)  !!  Synch
                                         // A 라는 접두사가 NOT 의 의미
                                         // ahref ( a: 권한없이 , hyper ref(reference 참조) 권한없이 참조
    나중에 ..   자바 서블릿에서 세션을 만들게 된다...  (세션)
   
   HTTP 프로토콜 은 응답 상태코드를 이용해서 서버의 처리 결과를 웹 브라우저에 알려주며, 주요 응답 상태
   코드로는 다음과 같은것들이 존재한다..
     200 - OK
     307 - 임시로 페이지가 리다이렉트 
     400 - 문법에러
     401 - 접근이 허용되지 않음(관리자만 접근가능) ,
     403 - 401 에러와 비슷하다..
     
     404 - URL에 따른 페이지가 존재하지 않음
     405 - 요청된 메소드는 허용불가 (get방식, post방식) 일때  
     로그인 만들때 (get 방식 x) 모르는 사람이 id, pw 을 알수가 있기때문에 
     500 - 서버 내부 에러.. JSP 에서 익셉션이 발생했을 경우
     503 - 서버 부하 (ex 디도스)
     
     
     JSP 가 정상적으로 실행되는 응답코드로 200이 전송되며 ,
     response.sendRedirect() 를 이용할 경우 응답코드로 307 이 전송된다.  -> 
     (주요 응답코드를 
       나중 디버깅할때  쓴다!!! )
       
          
   
   -->

</body>
</html>

<!-- 
 만약 에러 페이지의 길이가 513 바이트보다 작다면.

 -->