<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정</title>
</head>
<body>
		<div><a href="/list">리스트</a></div>
	<form action="/mod" method="post">
		<div><input type="hidden" name="iboard" value="${param.iboard}"></div>
		<!-- 어떤 방 글이 수정이 될지 알아야하므로 iboard가 필요한데 hidden으로 감춰준다 -->
		<div>
			제목 : <input type="text" name="title" value="${data.title}">
		</div>
		<div>
			내용 : <textarea name="ctnt">${data.ctnt}</textarea>
		</div>
		<div>
		<input type="submit" value="수정">
		<input type="reset" value="초기화">
		</div>
	</form>

</body>
</html>