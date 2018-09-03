<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/3/18
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
out.print("Welcome application "+request.getParameter("uname"));
String driver =  application.getInitParameter("dname");
out.print("<br>driver name is = "+driver);
%>
</body>
</html>
