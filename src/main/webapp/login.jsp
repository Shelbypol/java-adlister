<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (request.getMethod().equalsIgnoreCase("POST")) {
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username.equals("admin") && password.equals("password")) {
        response.sendRedirect("/profile.jsp");
    }
}

%>

<html>
<head>
    <title>Login</title>
</head>
<body>

<%@include file="partials/navbar.jsp" %>
<h3>User login:</h3>

<form method="POST">
    <div>
        <input type="text" id="username" placeholder="username">
    </div>
    <div>
        <input type="password" id="password" placeholder="password">
    </div>
    <button type="submit">Login</button>
</form>

<%--<c:choose>--%>
<%--    <c:when test="${param.username}">--%>
<%--        <c:when test="${param.password};">--%>
<%--            <% response.sendRedirect("/profile.jsp"); %>--%>
<%--            <c:otherwise>--%>
<%--                <p>Wrong password</p>--%>
<%--            </c:otherwise>--%>
<%--        </c:when>--%>
<%--        <c:otherwise>--%>
<%--            <p>Wrong username</p>--%>
<%--        </c:otherwise>--%>
<%--    </c:when>--%>
<%--</c:choose>--%>


</body>
</html>

