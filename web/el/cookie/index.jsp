<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/4/18
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>First JSP</h1>
<%
    Cookie cookie = new Cookie("username","Myrzakanov");
    response.addCookie(cookie);
%>
<a href="process.jsp">click</a>
</body>
</html>
