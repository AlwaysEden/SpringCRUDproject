<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<%--@elvariable id="boardVO" type=""--%>
<form:form modelAttribute="u" method ="GET" action = "../editok">
	<form:hidden path="seq"/>
	<table id = "edit">
		<tr><tb>카테고리</tb><tb><form:input path = "category"/></tb></tr>
		<tr><tb>제목</tb><tb><form:input path = "title"/></tb></tr>
		<tr><tb>글쓴이</tb><tb><form:input path = "writer"/></tb></tr>
		<tr><tb>내용</tb><tb><form:textarea cols="50" rows="5" path="content"/></tb></tr>
	</table>
	<input type = "submit" value="수정하기"/>
	<input type = "button" value="취소하기" onclick = "history.back()"
</form:form>

</body>
</html>