<%--
  Created by IntelliJ IDEA.
  User: jinsejin
  Date: 2023/12/01
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>addPostform</title>
</head>
<body>
<form action= "addOk" method="post">
  <table id="edit">
    <tr><td>카테고리</td><td><input type="text" name="category"/></td></tr>
    <tr><td>제목</td><td><input type="text" name="title"/></td></tr>
    <tr><td>글쓴이</td><td><input type="text" name="writer"/></td></tr>
    <tr><td>내용</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    <tr><td>아이디</td><td><textarea cols="text"  name="id"></textarea></td></tr>
    <tr><td>패스워드</td><td><input cols="text"  name="password"></td></tr>
    <tr><td>나이</td><td><input cols="text"  name="age"></td></tr>
    <tr><td>성별</td><td><input cols="text" name="gender"></td></tr>
  </table>
  <button type="button" onclick="location.href='list'">목록보기</button>
  <button type="submit">등록하기</button>
</form>
</body>
</html>