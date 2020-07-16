<%--
  Created by IntelliJ IDEA.
  User: shelby
  Date: 7/16/20
  Time: 6:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Login</title>
</head>
<body>


<h3>User login:</h3>

<form method="POST">
    <input type="text" id="username" placeholder="username">
    <input type="password" id="password" placeholder="password">
    <button type="submit">Login</button>
</form>

<c:choose>
    <c:when test="${param.username}">
        <c:when test="${param.password};">
            <% response.sendRedirect("/profile.jsp"); %>
            <c:otherwise>
                <p>Wrong password</p>
            </c:otherwise>
        </c:when>
        <c:otherwise>
            <p>Wrong username</p>
        </c:otherwise>
    </c:when>
</c:choose>


</body>
</html>
