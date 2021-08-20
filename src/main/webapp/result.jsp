<%--
  Created by IntelliJ IDEA.
  User: kieuanh
  Date: 20/08/2021
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = request.getParameter("name");
%>
<h1 style="color: blueviolet">
    <%=name
    %>
</h1>
</body>
</html>
