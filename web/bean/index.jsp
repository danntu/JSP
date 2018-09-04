<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/4/18
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="obj" class="main.java.Calculator"/>
<%
int m = obj.cube(5);
out.print("cube of 5 is "+m);
%>
</body>
</html>
