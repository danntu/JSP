<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/5/18
  Time: 9:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="main.java.LoginBean" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p> You are successfully logged in!</p>
<%
LoginBean loginBean = (LoginBean) request.getAttribute("bean");
out.print("Welcome, "+loginBean.getName());
%>
</body>
</html>
