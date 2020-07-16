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

<form action="/login.jsp" method="post">
    <label for="username">Username</label>
    <input type="text" id="username"  name="username">

    <label for="password">Password</label>
    <input type="password" id="password" name="password">

    <button type="submit">Login</button>

</form>


<%--<div class="container">--%>
<%--    <h1>Please Log In</h1>--%>
<%--    <form action="/login.jsp" method="POST">--%>
<%--        <div class="form-group">--%>
<%--            <label for="username">Username</label>--%>
<%--            <input id="username" name="username" class="form-control" type="text" >--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="password">Password</label>--%>
<%--            <input id="password" name="password" class="form-control" type="password">--%>
<%--        </div>--%>
<%--        <input type="submit" class="btn btn-primary btn-block" value="Log In">--%>
<%--    </form>--%>
<%--</div>--%>

</body>
</html>

