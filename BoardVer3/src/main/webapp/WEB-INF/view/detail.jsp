<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail</title>
</head>
<body>
	<h3><a href="/del?iboard=${param.iboard}">삭제</a></h3>
	<h3><a href="/mod?iboard=${param.iboard}">수정</a></h3>
	<div><a href="/list">리스트</a></div>
	<div>제목 :  ${data.title}</div>
	<div>작성일 : ${data.regdt}</div>
	<div>${data.ctnt}</div>
	
<%--<div>
 	<input type="button" value="삭제" onclick="delBoard(${param.iboard})">
	</div>
	<script>
	function delBoard(iboard) {
		location.href='/del?iboard=' + iboard;
	}
	</script> a태그로 할 수도 있고 스크립트에서 함수로 할 수 있다. --%>
</body>
</html>