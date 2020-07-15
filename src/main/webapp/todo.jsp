<%--
  Created by IntelliJ IDEA.
  User: shelby
  Date: 7/14/20
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%--JSTL TAG--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setAttribute("isAdmin", true);%>
<html>
<head>
    <title>Todo List</title>
</head>

<body>
<h1>Welcome to your todo list</h1>

<c:choose>
    <c:when test="${isAdmin}">
        <p>You are viewing this as an Admin.</p>
        <%@include file="partials/admin-nav.jsp"%>
    </c:when>
    <c:otherwise>
        <p>Move along now</p>
        <%@include file="partials/navbar.jsp"%>
    </c:otherwise>
</c:choose>

<h1>Todos for the day</h1>
<p>
    <%=request.getParameter("item")%>
</p>

<c:if test="${isAdmin}">
    <p>Super secret admin dashboard</p>
</c:if>

</body>
</html>
