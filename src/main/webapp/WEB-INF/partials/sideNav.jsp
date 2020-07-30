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
            <h4>${sessionScope.user.username}</h4>
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
            <h4>Search Categories</h4>
            <div>
                <form action="ads/all-ads" method="get">
                    <input type="submit" name="1" value="All Ads" class="btn btn-secondary catBtn">
                </form>
                <form action="../cats/for-sale" method="get">
                    <input type="submit" name="2" value="For Sale" class="btn btn-secondary catBtn">
                </form>
                <form action="../cats/community" method="get">
                    <input type="submit" name="3" value="Community" class="btn btn-secondary catBtn">
                </form>
                <form action="../cats/housing" method="get">
                    <input type="submit" name="4" value="Housing" class="btn btn-secondary catBtn">
                </form>
                <form action="../cats/services" method="get">
                    <input type="submit" name="5" value="Services" class="btn btn-secondary catBtn">
                </form>
                <form action="../cats/jobs" method="get">
                    <input type="submit" name="6" value="Jobs" class="btn btn-secondary catBtn">
                </form>
            </div>
    </li>
    <hr>

    <%--            CREATE AD--%>
    <form action="ads/create" method="get">
        <input class="btn btn-secondary bg-dark adBtn" type="submit" value="Create Ad">
    </form>

</ul>


</body>
</html>
