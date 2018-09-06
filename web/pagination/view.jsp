<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 9/6/18
  Time: 9:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="java.util.*, main.java.pagination.EmpDAO, main.java.pagination.Emp" %>
<%
String spageid = request.getParameter("page");
int pageid = Integer.parseInt(spageid);
int total = 5;
if (pageid ==1){

} else{
    pageid=pageid-1;
    pageid=pageid*total+1;
}
List<Emp> list = EmpDAO.getRecords(pageid,total);
    out.print("<h1>Page No: "+spageid+"</h1>");
    out.print("<table border='1' cellpadding='4' width='60%'>");
    out.print("<tr><th>Id</th><th>Name</th><th>Salary</th>");
    for (Emp emp : list){
        out.print("<tr><td>"+emp.getId()+"</td><td>"+emp.getName()+"</td>" +
                "<td>"+emp.getSalary()+"</td></tr>");
    }
    out.print("</table>");
%>
<a href="view.jsp?page=1">1</a>
<a href="view.jsp?page=2">2</a>
<a href="view.jsp?page=3">3</a>
</body>
</html>
