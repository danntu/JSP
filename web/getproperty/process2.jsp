<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/4/18
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="u" class="main.java.User"></jsp:useBean>
<%
String name="Danik123456";
%>
<jsp:setProperty property="name" name="u" value="<%=name %>"/>
Record<br>
<jsp:getProperty name="u" property="name"/>
</body>
</html>
