<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>free board</title>
  <style>
    #list {
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }
    #list td, #list th {
      border: 1px solid #ddd;
      padding: 8px;
      text-align:center;
    }
    #list tr:nth-child(even){background-color: #f2f2f2;}
    #list tr:hover {background-color: #ddd;}
    #list th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: center;
      background-color: #006bb3;
      color: white;
    }
  </style>
  <script>
    function delete_ok(id){
      var a = confirm("정말로 삭제하겠습니까?");
      if(a) location.href='deleteok/'+id;
    }
  </script>
</head>
</head>
<body>
<h1>맛집게시판</h1>
<button type="button" onclick="location.href='../login/logout'">로그아웃</button>

<table id="list" width="90%">
    <tr>
      <th>Id</th>
      <th>Category</th>
      <th>Writer</th>
      <th>Restaurant Name</th>
      <th>Star</th>
      <th>FoodRank</th>
      <th>Opinion</th>
      <th>Location</th>
      <th>Telephone Number</th>
      <th>edit</th>
      <th>delete</th>

    </tr>

    <c:forEach items="${list}" var="u">
  <tr>
    <td>${u.id}</td>
    <td>${u.category}</td>
    <td>${u.writer}</td>
    <td>${u.restName}</td>
    <td>${u.star}</td>
    <td>${u.foodRank}</td>
    <td>${u.opinion}</td>
    <td>${u.location}</td>
    <td>${u.callNumber}</td>

    <td><a href="editform/${u.id}">Edit</a></td>
    <td><a href="javascript:delete_ok('${u.id}')">Delete</a></td>
  </tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">새글쓰기</button>
</body>
</html>