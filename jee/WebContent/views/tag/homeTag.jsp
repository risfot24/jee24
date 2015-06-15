<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Form 태그</title>
</head>
<body>
     <form action="">
         <fieldset><!--멤변이 깔려있는 공간  -->
          <legend>데이터 전송</legend>
         아이디: <input type="text" name="id" value="ID"/> <br />
         비밀번호: <input type="password" name="pass"  /> <br />
         인사말 : <textarea name="area" id="area" cols="30" rows="10"></textarea> <br />
          <input type="image" src="../../images/Jellyfish.jpg" width="250" height="150"/>
         광고:    <iframe src="//giphy.com/embed/PTFRmGOgiPUS4" width="480" height="268" frameBorder="0" style="max-width: 100%" class="giphy-embed" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe><br />
         광고2: <input type="image" src="../../images/giphy.gif" width="250" height="150"/>
         </fieldset>
         
     
     </form>
	
</body>
</html>