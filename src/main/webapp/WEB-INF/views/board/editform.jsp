<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@page import="com.mycom.myapp.board.BoardDAO, com.mycom.myapp.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Page</title>
	<style>
		#edit {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
		}
		#edit tr:nth-child(even){background-color: #f2f2f2;}
		#edit tr:hover {background-color: #ddd;}
		#edit td {
			padding-top: 12px;
			padding-bottom: 12px;
		}
		.input {
			text-align: center;
			background-color: #006bb3;
			color: white;
		}
	</style>
</head>
<body>

<h1>Edit Page</h1>
<form:form modelAttribute="u" method="GET" action="../editok">
	<form:hidden path="id"/>
	<table id="edit" width="800">
		<tr><td class="input">글쓴이 </td><td><form:input path="writer"/></td></tr>
		<tr><td class="input">카테고리</td>
			<td><form:radiobutton path="category" value="한식" label="한식"/></td>
			<td><form:radiobutton path="category" value="중식" label="중식"/></td>
			<td><form:radiobutton path="category" value="양식" label="양식"/></td>
			<td><form:radiobutton path="category" value="일식" label="일식"/></td>
		</tr>
		<tr><td class="input">식당이름</td><td><form:input path="restName"/></td></tr>
		<tr><td class="input">음식순위</td><td><form:input path="foodRank"/></td></tr>
		<tr><td class="input">별점</td>
			<td><form:select path="star">
				<form:option value="1">1</form:option>
				<form:option value="2">2</form:option>
				<form:option value="3">3</form:option>
				<form:option value="4">4</form:option>
				<form:option value="5">5</form:option>
			</form:select></td>
		</tr>
		<tr><td class="input">위치   </td><td><form:input path="location"/></td></tr>
		<tr><td class="input">전화번호</td><td><form:input path="callNumber"/></td></tr>
		<tr><td class="input">의견 및 남길 말</td><td><form:textarea cols="20" rows="5" path="opinion"/></td></tr>
	</table>
	<button type="submit">수정하기</button>
	<button type="button" onclick="history.back()"/>취소하기</button>
</form:form>

</body>
</html>
