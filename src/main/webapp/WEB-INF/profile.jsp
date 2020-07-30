<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <style>
        <%@include file="/css/profile.css" %>
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<jsp:include page="/WEB-INF/partials/sideNav.jsp"/>

<div class="container profile">
    <div>

        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <br>
        <br>
        <div class="row">
            <form action="/request-contact" class="col-md-6">
                <input type="submit" value="Requested Contact Info" class="profileBtn bg-dark">
            </form>
            <form action="/created-ads" class="col-md-6">
                <input type="submit" value="Your Ads" class="profileBtn bg-dark">
            </form>
        </div>
        <hr>
        <div class="row">
            <form action="/saved-ads" class="col-md-6">
                <input type="submit" value="Saved Ads" class="profileBtn bg-dark">
            </form>
            <form action="/update-profile" class="col-md-6">
                <input type="submit" value="Edit Profile" class="profileBtn bg-dark">
            </form>
        </div>
    </div>
    </div>
</body>
</html>
