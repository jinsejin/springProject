<%--
  Created by IntelliJ IDEA.
  User: jinsejin
  Date: 2023/12/01
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.curd.BoardDAO, com.curd.BoardVO"%>
<html>
<head>
  <title>게시글 수정</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #eaeaea;
      margin: 0;
      padding: 20px;
    }
    .form-container {
      background-color: #fff;
      width: 50%;
      margin: 30px auto;
      padding: 20px;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
    }
    .form-container h2 {
      text-align: center;
      color: #333;
    }
    table {
      width: 100%;
      border-collapse: separate;
      border-spacing: 0 15px;
    }
    td {
      padding: 10px;
    }
    .form-input, .form-textarea {
      width: 95%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
    .form-textarea {
      resize: vertical;
    }
    .form-button {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 4px;
      color: white;
      font-size: 16px;
      cursor: pointer;
    }
    .submit-button {
      background-color: #4CAF50;
    }
    .cancel-button {
      background-color: #f44336;
    }
  </style>
</head>
<body>

<form:form modelAttribute= "u"  action="../editok" method="post">
  <form:hidden path="seq"/>
  <table id="edit">
    <tr><td>Category:</td><td><form:input path="category"/></td></tr>
    <tr><td>Title:</td><td><form:input path="title"/></td></tr>
    <tr><td>Writer:</td><td><form:input path="writer"/></td></tr>
    <tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
  </table>
  <button type="button" onclick="location.href = '../list' ">취소하기</button>
  <button type="submit">수정하기</button>
</form:form>
</body>
</html>
