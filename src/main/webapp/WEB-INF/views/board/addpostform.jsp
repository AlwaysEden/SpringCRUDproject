<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Page</title>
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
<h1>Add New Post</h1>
<form action = "addok" method="post">
    <table id = "edit" width="800">
        <tr><td class="input" width="200">글쓴이 </td><td><input type="text" name = "writer"/></td></tr>
        <tr><td class="input" width="200">카테고리</td>
            <td><input type="radio" name = "category" value="한식" class="radio"/>한식</td>
            <td><input type="radio" name = "category" value="중식" class="radio"/>중식</td>
            <td><input type="radio" name = "category" value="양식" class="radio"/>양식</td>
            <td><input type="radio" name = "category" value="일식" class="radio"/>일식</td>
        </tr>
        <tr><td class="input">식당이름</td><td><input type="text" name = "restName"/></td></tr>
        <tr><td class="input">음식순위</td><td><input type="text" name = "foodRank"/></td></tr>
        <tr><td class="input">별점</td><td><select name = "star">
            <option value = "1">1</option>
            <option value = "2">2</option>
            <option value = "3">3</option>
            <option value = "4">4</option>
            <option value = "5">5</option>
        </select></td></tr><p></p>
        <tr><td class="input">위치   </td><td><input type="text" name = "location"/></td></tr>
        <tr><td class="input">전화번호</td><td><input type="text" name = "callNumber"/></td></tr>
        <tr><td class="input">의견 및 남길 말</td><td><textarea cols="20" rows="5" name = "opinion"></textarea></td></tr>
    </table>
    <button type = "button" onclick = "location.href = 'list'">목록보기</button>
    <button type = "submit">등록하기</button>
</form>
</body>
</html>
