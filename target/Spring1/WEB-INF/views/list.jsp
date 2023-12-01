<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.curd.BoardDAO, com.curd.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <title>게시판</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 0;
            background-color: #f4f4f4;
        }
        h1 {
            text-align: center;
        }
        table {
            width: 90%;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f9f9f9;
        }
        a {
            text-decoration: none;
            color: #333;
        }
        .add-link {
            display: block;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<h1>자유게시판</h1>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>Category</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Content</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.category}</td>
            <td>${u.title}</td>
            <td>${u.writer}</td>
            <td>${u.content}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}">EDIT</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">DLETE</a></td>
        </tr>
    </c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">새글쓰기</button>
<script>
    function delete_ok(id) {
        var confirmCheck = confirm("정말로 삭제하시겠습니까?");
        if(confirmCheck) {
            location.href='/deleteOk' + id;
        }
    }
</script>
</body>
</html>

