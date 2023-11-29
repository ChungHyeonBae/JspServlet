<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Mybatis</h1>
	
	<form action="insert.mytbl">
		<input type="text" name="col1">
		<input type="text" name="col2">
		<input type="text" name="col3">
		<input type="submit" value="추가">
	</form>
	<form action="update.mytbl">
		<input type="text" name="col1">
		<input type="text" name="col2">
		<input type="text" name="col3">
		<input type="submit" value="수정">
		</form>
	<form action="delete.mytbl">
		<input type="text" name="col1">
	
		<input type="submit" value="삭제">
	</form>

	<c:forEach items="${list}" var='vo'>
	<p>${vo.col1}</p>	
	</c:forEach>
	<a href="insert.mytbl">인서트</a>
	<a href="delete.mytbl">삭제</a>
	<a href="select.mytbl">선택</a>
</body>
</html>