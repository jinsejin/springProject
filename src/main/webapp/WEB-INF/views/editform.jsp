<%--
  Created by IntelliJ IDEA.
  User: jinsejin
  Date: 2023/12/01
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <form:form commandName="boardVO" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
      <tr> <td>카테고리</td> <td><form:input path="category"/></td> </tr>
      <tr> <td>제목</td> <td><form:input path="title"/></td> </tr>
      <tr> <td>글쓴이</td> <td><form:input path="writer"/></td> </tr>
      <tr> <td>내용</td> <td><form:textarea path="content" cols="50" rows="5"/></td> </tr>
    </table>
    <input type="submit" value="수정하기"/>
    <input type="button" value="취소하기" onclick="history.back()"/>
  </form:form>
</body>
</html>


