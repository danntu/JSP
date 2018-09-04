<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/4/18
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>Welcome to index page</h3>
<%
session.setAttribute("username","Danik");
%>
<a href="process.jsp">visit</a>
</body>
</html>
