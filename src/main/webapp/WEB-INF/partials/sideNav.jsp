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
        <%@include file="/sidenav.css" %>
    </style>
</head>
<body>
<%--<nav class="navbar navbar-expand-lg navbar-light bg-light sideNav">--%>
    <ul class="sideWords navbar-brand sideUl">

        <%--        WELCOME --%>
        <li class="welcome">
            <a class="" href="#">
                <c:choose>
                    <c:when test="${sessionScope.user}">
                        <h2>Welcome, ${sessionScope.user.username}!</h2>
                    </c:when>

                    <c:otherwise>
                        <h2>Welcome!</h2>
                    </c:otherwise>
                </c:choose>
            </a>
        <hr>
        </li>

        <%--        SEARCH ADS--%>
        <li class="searchAd">
            <form class="form-inline my-2 my-lg-0 navBtn">
                <input class="form-control mr-sm-2" type="search" placeholder="Search ads" aria-label="Search">
            </form>
        </li>

        <hr>

        <%--   CATEGORY  --%>
        <li class="searchCat">
            <div>
                <h3>Search Categories</h3>
                <%--                <div class="form-group">--%>
                <%--                    <label class="category" for="category"></label>--%>
                <button class="btn btn-secondary catBtn" type="button">
                    For Sale
                </button>
                <br>
                <button class="btn btn-secondary catBtn" type="button">
                    Community
                </button>
                <br>
                <button class="btn btn-secondary catBtn" type="button">
                    Housing
                </button>
                <br>
                <button class="btn btn-secondary catBtn" type="button">
                    Services
                </button>
                <br>
                <button class="btn btn-secondary catBtn" type="button">
                    Jobs
                </button>
            </div>
        </li>

        <hr>

        <%--            CREATE AD--%>
        <li class="catBtn">
            <button class="btn btn-secondary" type="button" href="#">Create Ad</button>
        </li>
    </ul>
<%--</nav>--%>
</body>
</html>


<%--<nav class="navbar navbar-expand-lg navbar-light bg-light sideNav">--%>
<%--    <ul class="sideWords navbar-brand">--%>

<%--        &lt;%&ndash;        WELCOME &ndash;%&gt;--%>
<%--        <li class="welcome">--%>
<%--            <a class="" href="#">--%>
<%--                <c:choose>--%>
<%--                    <c:when test="${sessionScope.user}">--%>
<%--                        <h2>Welcome, ${sessionScope.user.username}!</h2>--%>
<%--                    </c:when>--%>

<%--                    <c:otherwise>--%>
<%--                        <h2>Welcome!</h2>--%>
<%--                    </c:otherwise>--%>
<%--                </c:choose>--%>
<%--            </a>--%>
<%--            <hr>--%>
<%--        </li>--%>

<%--        &lt;%&ndash;        SEARCH ADS&ndash;%&gt;--%>
<%--        <li class="searchAd">--%>
<%--            <form class="form-inline my-2 my-lg-0 navBtn">--%>
<%--                <input class="form-control mr-sm-2" type="search" placeholder="Search ads" aria-label="Search">--%>
<%--            </form>--%>
<%--        </li>--%>

<%--        <hr>--%>

<%--        &lt;%&ndash;   CATEGORY  &ndash;%&gt;--%>
<%--        <li class="searchCat">--%>
<%--            <div>--%>
<%--                <h3>Search Categories</h3>--%>
<%--                &lt;%&ndash;                <div class="form-group">&ndash;%&gt;--%>
<%--                &lt;%&ndash;                    <label class="category" for="category"></label>&ndash;%&gt;--%>
<%--                <button class="btn btn-secondary catBtn" type="button">--%>
<%--                    For Sale--%>
<%--                </button>--%>
<%--                <br>--%>
<%--                <button class="btn btn-secondary catBtn" type="button">--%>
<%--                    Community--%>
<%--                </button>--%>
<%--                <br>--%>
<%--                <button class="btn btn-secondary catBtn" type="button">--%>
<%--                    Housing--%>
<%--                </button>--%>
<%--                <br>--%>
<%--                <button class="btn btn-secondary catBtn" type="button">--%>
<%--                    Services--%>
<%--                </button>--%>
<%--                <br>--%>
<%--                <button class="btn btn-secondary catBtn" type="button">--%>
<%--                    Jobs--%>
<%--                </button>--%>
<%--            </div>--%>
<%--        </li>--%>

<%--        <hr>--%>

<%--        &lt;%&ndash;            CREATE AD&ndash;%&gt;--%>
<%--        <li class="catBtn">--%>
<%--            <button class="btn btn-secondary" type="button" href="#">Create Ad</button>--%>
<%--        </li>--%>
<%--    </ul>--%>
<%--</nav>--%>
<%--</body>--%>