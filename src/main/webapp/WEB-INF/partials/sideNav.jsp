<%--
  Created by IntelliJ IDEA.
  User: shelby
  Date: 7/28/20
  Time: 9:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        <%@include file="/css/sidenav.css" %>
    </style>
</head>
<body>
<%--<nav class="navbar navbar-expand-lg navbar-light bg-light sideNav">--%>
    <ul class="sideWords navbar-brand sideUl">

        <%--        WELCOME --%>
        <li class="welcome">
            <a class="" href="#">
                <h3>Welcome ${sessionScope.user.username}!</h3>
            </a>
        <hr>
        </li>

        <%--        SEARCH ADS--%>
        <li class="searchAd">
<%--            <h4>Search Ads</h4>--%>
            <form class="form-inline my-2 my-lg-0 adBtn">
                <input class="form-control mr-sm-2" type="search" placeholder="Search ads" aria-label="Search">
            </form>
        </li>

        <hr>

        <%--   CATEGORY  --%>
        <li class="searchCat">
            <form action="/searchCategory" method="get">
            <div>
                <input type="submit" name="category" value="1" placeholder="All Ads" class="btn btn-secondary catBtn">
                <br>
                <input type="submit" name="category" value="2" placeholder="For Sale" class="btn btn-secondary catBtn">
                <br>
                <input type="submit" name="category" value="3" placeholder="Community" class="btn btn-secondary catBtn">
                <br>
                <input type="submit" name="category" value="4" placeholder="Housing" class="btn btn-secondary catBtn">
                <br>
                <input type="submit" name="category" value="5" placeholder="Services" class="btn btn-secondary catBtn">
                <br>
                <input type="submit" name="category" value="6" placeholder="Jobs" class="btn btn-secondary catBtn">

            </div>
            </form>
        </li>

        <hr>

        <%--            CREATE AD--%>
        <li>
            <button class="btn btn-secondary adBtn" type="button" href="#"><h4>Create Ad</h4></button>
<%--            <h4>Search Categories</h4>--%>
        </li>
    </ul>



</body>
</html>
