<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/3/18
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String name = (String) pageContext.getAttribute("user",PageContext.SESSION_SCOPE);
out.print("Hello "+name);
%>
</body>
</html>
