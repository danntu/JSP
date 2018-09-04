<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/4/18
  Time: 3:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="user" class="main.java.User"></jsp:useBean>
<jsp:setProperty name="user" property="name"/>
<jsp:setProperty name="user" property="password"/>
<jsp:setProperty name="user" property="email"/>
Record<br>
<jsp:getProperty name="user" property="name"/>
<jsp:getProperty name="user" property="password"/>
<jsp:getProperty name="user" property="email"/>
</body>
</html>
