<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.curd.BoardDAO, com.curd.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>home</title>
</head>
<body>
  <h1>
    Hello world
  </h1>
  <p>the time on the server time is ${serverTime}</p>
  <p><a href="list">게시판으로 이동</a></p>
</body>
</html>
