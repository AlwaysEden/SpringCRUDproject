<%--
  Created by IntelliJ IDEA.
  User: jeongwon
  Date: 2022/12/02
  Time: 4:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <form action = "addok" method="get">
    <table id = "edit">
      <tr><tb>카테고리</tb><tb><input type="text" name = "category"/></tb></tr>
      <tr><tb>제목</tb><tb><input type="text" name = "title"/></tb></tr>
      <tr><tb>글쓴이</tb><tb><input type="text" name = "writer"/></tb></tr>
      <tr><tb>내용</tb><tb><textarea cols="" rows="5" name = "content"></textarea></tb></tr>
    </table>
    <button type = "button" onclick = "location.href = 'list'">목록보기</button>
    <button type = "submit">등록하기</button>
  </form>
</body>
</html>
