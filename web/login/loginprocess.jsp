<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/7/18
  Time: 11:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="main.java.login.LoginDAO"%>
<jsp:useBean id="obj" class="main.java.login.LoginBean"/>

<jsp:setProperty property="*" name="obj"/>

<%
    boolean status=LoginDAO.validate(obj);
    if(status){
        out.println("You r successfully logged in");
        session.setAttribute("session","TRUE");
    }
    else
    {
        out.print("Sorry, email or password error");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
    }
%>
</body>
</html>
