<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<jsp:include page="/WEB-INF/partials/sideNav.jsp"/>

<div class="container profile">
    <div>

    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <br>
    <br>
    <form action="/request-contact" >
        <input type="submit" value="Requested Contact Info" class="profileBtn bg-dark">
    </form>
    <hr>
    <form action="/created-ads" >
        <input type="submit" value="Your Ads" class="profileBtn bg-dark">
    </form>
    <hr>
    <form action="/saved-ads">
        <input type="submit" value="Saved Ads" class="profileBtn bg-dark">
    </form>
    <hr>
    <form action="/update-profile" >
        <input type="submit" value="Edit Profile" class="profileBtn bg-dark">
    </form>
    </div>


    <%--ads card--%>
    <div class="ad-cards-container">
        <c:forEach var="ad" items="${ads}">
            <div class="ads-card">
                <div class="title">
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                    <p><a href="/ads/ad?ad_id=${ad.id}">View Ad</a></p>
                    <input type="submit" class="btn edit-btn" value="Edit">
                    <input type="submit" class="btn delete-btn" value="Delete">
                </div>
                <div class="bar">
                    <div class="emptybar"></div>
                    <div class="filledbar"></div>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>
