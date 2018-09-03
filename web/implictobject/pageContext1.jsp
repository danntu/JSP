<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/3/18
  Time: 4:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String name = request.getParameter("uname");
out.print("welcome pageContext "+name);
pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE);

%>
<a href="pageContext2.jsp">second page</a>
</body>
</html>
