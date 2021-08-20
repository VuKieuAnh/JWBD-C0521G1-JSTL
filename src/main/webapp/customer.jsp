<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sun.org.glassfish.gmbal.ManagedData" %>
<%@ page import="model.Customer" %><%--
  Created by IntelliJ IDEA.
  User: kieuanh
  Date: 20/08/2021
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%

    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Dai", "11/08/97", "Quang Ninh"));
    customers.add(new Customer("Dai 1", "11/08/99", "Quang Ninh"));
    customers.add(new Customer("Dai 2", "11/08/98", "Quang Ninh"));
    request.setAttribute("ka", customers);

%>

<body>
<table>
    <tr>
        <td>ten</td>
        <td>ngay thang nam sinh</td>
        <td>que quan</td>
    </tr>
    <c:forEach var="c" items="${ka}">
        <tr>
            <td>${c.name}</td>
            <td>${c.dateOfBirth}</td>
            <td>${c.address}</td>
        </tr>
    </c:forEach>

<%--    <%--%>
<%--        for (model.Customer c: customers){--%>
<%--            %>--%>
<%--        <tr>--%>
<%--            <td><%=c.getName()%></td>--%>
<%--            <td><%=c.getDateOfBirth()%></td>--%>
<%--            <td><%=c.getAddress()%>></td>--%>
<%--        </tr>--%>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
</table>
</body>
</html>
