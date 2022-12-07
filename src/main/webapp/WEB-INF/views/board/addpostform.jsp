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
      <tr><tb>글쓴이 </tb><tb><input type="text" name = "writer"/></tb></tr><p></p>
      <tr><tb>카테고리</tb><tb><input type="text" name = "category"/></tb></tr><p></p>
      <tr><tb>식당이름</tb><tb><input type="text" name = "restName"/></tb></tr><p></p>
      <tr><tb>음식순위</tb><tb><input type="text" name = "foodRank"/></tb></tr><p></p>
      <tr><tb>별점</tb><tb><select name = "star">
        <option value = "1">1</option>
        <option value = "2">2</option>
        <option value = "3">3</option>
        <option value = "4">4</option>
        <option value = "5">5</option>
      </select></tb></tr><p></p>
      <tr><tb>위치   </tb><tb><input type="text" name = "location"/></tb></tr><p></p>
      <tr><tb>전화번호</tb><tb><input type="text" name = "callNumber"/></tb></tr><p></p>
      <tr><tb>의견 및 남길 말</tb><tb><textarea cols="20" rows="5" name = "opinion"></textarea></tb></tr>
    </table>
    <button type = "button" onclick = "location.href = 'list'">목록보기</button>
    <button type = "submit">등록하기</button>
  </form>
</body>
</html>
