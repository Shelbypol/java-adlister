<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>

<%--<div class="jumbotron jumbotron-fluid">--%>
<%--    <div class="container">--%>
<%--        <h1 class="display-4">Fluid jumbotron</h1>--%>
<%--        <img class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</img>--%>
<%--    </div>--%>
<%--</div>--%>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to the Adlister!</h1>
        <form action="/register">
            <a href="/register"><input type="submit" class="btn register-btn btn-light" value="Sign Me Up!"></a>
        </form>
        <form action="/login">
        <a href="/login"><input type="submit" class="btn login-btn btn-light" value="Take me to my profile!"></a>
    </form>
        <form action="/ads">
            <a href="/ads"><input type="submit" class="btn login-btn btn-light" value="Take me to view ads!"></a>
        </form>
    </div>
</body>
</html>
