<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/3/18
  Time: 3:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String name = request.getParameter("uname");
out.print("Welcome session for "+name);
session.setAttribute("user",name);
%>
<a href ="session2.jsp">second jsp page</a>
</body>
</html>
