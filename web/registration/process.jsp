<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/7/18
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="main.java.registration.RegisterDao"%>
<jsp:useBean id="obj" class="main.java.registration.User"/>

<jsp:setProperty property="*" name="obj"/>

<%
    int status=RegisterDao.register(obj);
    if(status>0)
        out.print("You are successfully registered");

%>

</body>
</html>
