<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <style>
        <%@include file="/css/adIndexCss.css" %>
    </style>
</head>
<body>
<%--    <%@include file="/css/sidenav.css" %>--%>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<jsp:include page="/WEB-INF/partials/sideNav.jsp"/>

<div class="container catContainer">
    <div class="row">
        <div class="card col-md-3 center">
            <img class="card-img-top imgCard" src="all.png" alt="Card image cap">
            <div class="card-body">
            </div>
        </div>
        <div class="card col-md-3">
            <img class="card-img-top imgCard" src="for-sale.png" alt="Card image cap">
            <div class="card-body">
            </div>
        </div>
        <div class="card col-md-3">
            <img class="card-img-top imgCard" src="community.png" alt="Card image cap">
            <div class="card-body">
            </div>
        </div>
    </div>
    <div class="row rowTwo center">
        <div class="card col-md-3">
            <img class="card-img-top imgCard" src="housing.png" alt="Card image cap">
            <div class="card-body">
            </div>
        </div>
        <div class="card col-md-3">
            <img class="card-img-top imgCard" src="job.png" alt="Card image cap">
            <div class="card-body">
            </div>
        </div>
        <div class="card col-md-3">
            <img class="card-img-top imgCard" src="services.png" alt="Card image cap">
            <div class="card-body">
            </div>
        </div>
    </div>
</div>



</body>
</html>
