<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/3/18
  Time: 6:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="header.html"%>
Today is <%= java.util.Calendar.getInstance().getTime()%>
</body>
</html>
