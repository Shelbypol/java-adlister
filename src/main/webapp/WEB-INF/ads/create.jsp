<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
    <style>
        <%@include file="/css/adIndexCss.css" %>
        <%@include file="/css/createAd.css" %>
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<jsp:include page="/WEB-INF/partials/sideNav.jsp"/>

<div class="container createContainer">
    <h1>Create a new Ad</h1>
    <hr>
    <br>
    <form action="/create" method="post">
        <div class="col-md-6">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <br>
        <div class="col-md-6">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control"></textarea>
        </div>
        <br>
        <hr>
<%--        <div class="btn-group">--%>
<%--            <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
<%--                Category--%>
<%--            </button>--%>
<%--            <div class="dropdown-menu dropdown-menu-right" name="category" id="category">--%>
<%--                <button class="dropdown-item" value="2" type="button">For Sale</button>--%>
<%--                <button class="dropdown-item" value="3" type="button">Community</button>--%>
<%--                <button class="dropdown-item" value="4" type="button">Housing</button>--%>
<%--                <button class="dropdown-item" value="5" type="button">Services</button>--%>
<%--                <button class="dropdown-item" value="6" type="button">Jobs</button>--%>
<%--            </div>--%>
<%--        </div>--%>

        <br>
        <div class="col-md-6 dropdown">
    <button type="button" aria-labelledby="dropdownMenu2"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       Category
    </button>
            <label for="category"></label>
            <select class="dropdown-menu" name="category" id="category" aria-labelledby="dropdownMenu2">
                <option class="dropdown-item" value="2" >For Sale</option>
                <option class="dropdown-item" value="3">Community</option>
                <option class="dropdown-item" value="4">Housing</option>
                <option class="dropdown-item" value="5">Services</option>
                <option class="dropdown-item" value="6">Jobs</option>
            </select>
        </div>

        <div class="col-md-6">
        <input type="submit" class="btn btn-block btn-dark">
        </div>
    </form>
</div>

</body>
</html>