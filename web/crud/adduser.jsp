<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/7/18
  Time: 10:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="main.java.crud.UserDao" %>
<jsp:useBean id="u" class="main.java.crud.User"></jsp:useBean>
<jsp:setProperty name="u" property="*"/>
<%
    int i = UserDao.save(u);
    if (i>0){
        response.sendRedirect("adduser-success.jsp");
    } else{
        response.sendRedirect("adduser-error.jsp");
    }
%>
</body>
</html>
