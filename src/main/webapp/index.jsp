<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>
    <style>

        <%@include file="/css/mainStyle.css" %>
    </style>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container main">
    <h1>Welcome to the Adlister!</h1>
    <form action="/register" class="form col-md-4">
        <a href="/register"><input type="submit" class="btn register-btn btn-light" value="Sign Up!"></a>
    </form>
    <form action="/login" class="form col-md-4">
        <a href="/login"><input type="submit" class="btn login-btn btn-light" value="Login!"></a>
    </form>
    <form action="/ads" class="form col-md-4">
        <a href="/ads"><input type="submit" class="btn login-btn btn-light" value="View ads!"></a>
    </form>
</div>
</body>
</html>
