<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Profile"/>
    </jsp:include>
    <style>
        <%@include file="/css/adIndexCss.css" %>
        <%@include file="/css/createAd.css" %>
    </style>
</head>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<jsp:include page="/WEB-INF/partials/sideNav.jsp"/>

<body>
<div class="createContainerContainer">
    <div class="container register-container">
        <h2>Update, ${sessionScope.user.username}</h2>
        <hr>
        <br>
        <form action="/update-profile" method="post">
            <div class="col-md-6">
                <label class="username" for="username">Username</label>
                <input class="form-control" id="username" name="username" type="text" required>
            </div>
            <br>
            <div class="col-md-6">
                <label class="email" for="email">Email</label>
                <input class="form-control" id="email" name="email"  type="text" required>
            </div>
            <br>
            <div class="col-md-6">
                <input type="hidden" id="id" name="id" value="${sessionScope.user.id}">
                <input type="submit" class="btn btn-dark btn-block col-md-6">
            </div>
        </form>
    </div>
</div>
</body>
</html>
