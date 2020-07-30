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
        <div class="col-md-3">
<%--            <label class="category" for="category">Category</label>--%>
    <button type="button" class="btn btn-secondary dropdown-toggle col-md-12" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       Category
    </button>
            <select class="dropdown-menu" name="category" id="category">
                <option value="2" selected>For Sale</option>
                <option value="3">Community</option>
                <option value="4">Housing</option>
                <option value="5">Services</option>
                <option value="6">Jobs</option>
            </select>
        </div>
        <br>
        <div class="col-md-6">
        <input type="submit" class="btn btn-block btn-dark">
        </div>
    </form>
</div>

</body>
</html>