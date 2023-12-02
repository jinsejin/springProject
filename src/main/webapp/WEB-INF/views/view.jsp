<%--
  Created by IntelliJ IDEA.
  User: jinsejin
  Date: 2023/12/01
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<body>
<h1>View Form</h1>
<p>Category: ${list.category}</p>
<p>Title:${list.title}</p>
<p>Writer: ${list.writer}</p>
<p>Content: ${list.content}</p>
<p>Regdate: ${list.regdate}</p>
<button type="button" onclick="location.href='../list'">목록으로</button>
</body>