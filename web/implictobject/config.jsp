<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/3/18
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
out.print("Welcome config "+request.getParameter("uname"));
out.print("<br>");
String driver = config.getInitParameter("dname");
out.print("driver  name is = "+driver);
%>
</body>
</html>
