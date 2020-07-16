<%--
  Created by IntelliJ IDEA.
  User: shelby
  Date: 7/16/20
  Time: 6:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<% request.getAttribute("username"); %>


<html>
<head>
    <title>User Profile</title>
</head>
<body>

<%--<c:choose>--%>
<%--    <c:when test="${param.username}">--%>
<%--        <c:when test="${param.password};">--%>
            <h1>Welcome, ${param.username} </h1>
<%--            <c:otherwise>--%>
<%--                <p>Wrong password</p>--%>
<%--                <% response.sendRedirect("/login.jsp"); %>--%>
<%--            </c:otherwise>--%>
<%--        </c:when>--%>
<%--        <c:otherwise>--%>
<%--            <p>Wrong username</p>--%>
<%--            <% response.sendRedirect("/login.jsp"); %>--%>
<%--        </c:otherwise>--%>
<%--    </c:when>--%>
<%--</c:choose>--%>


<%--<h2>Hi, <% request.getParameter("uername"); %></h2>--%>



</body>
</html>
