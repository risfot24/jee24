<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>테이블 태그</title>
<style type="text/css">
@IMPORT url("tableTag.css");

</style>
 
</head>
<body>
    <table class="tableTag" summary="테이블 요약 설명">
        <caption>제 목</caption>
    	<colgroup><!-- column 한 셀에 대한 가로값을 입력 -->
    	    <col width="20%"/>
    	    <col width="40%"/>
    	    <col width="40%"/>
       </colgroup>    	
    	<thead> <!-- table head : 테이블 속 컬럼명을 지정 -->
    		<tr>
    			<th>이름</th>
    			<th>나이</th>
    			<th>국적</th>
    			
    		</tr>
        </thead>
        <tbody>  <!-- table body : 테이블에서 데이터를 랜더링 하는 집합체 -->
    		<tr>
    			<td>담디다</td>
    			<td>20</td>
    			<td>한국</td>
    		</tr>
    		<tr>
    			<td>톰 히들스톤</td>
    			<td>34</td>
    			<td>영국</td>
    		</tr>
    	    <tr>
    			<td>와냐 모리스</td>
    			<td>36</td>
    			<td>미국</td>
    		</tr>
    	</tbody>
    </table>

</body>
</html>