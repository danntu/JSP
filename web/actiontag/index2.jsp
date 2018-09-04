<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/4/18
  Time: 9:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>this is index page</h2>
<jsp:forward page="printdate2.jsp">
    <jsp:param name="name" value="Danik"/>
</jsp:forward>
</body>
</html>
