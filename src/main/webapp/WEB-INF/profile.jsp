<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <jsp:include page="/WEB-INF/partials/sideNav.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <%--   profile card--%>
    <div class="center">
        <div class="property-card">
            <a href="#">
                <div class="property-image">
                    <div class="property-image-title">
                        <!-- Optional <h5>Card Title</h5> If you want it, turn on the CSS also. -->
                    </div>
                </div>
            </a>
            <div class="property-description">
                <h5> ${sessionScope.user.username} </h5>
                <p>${sessionScope.user.email}</p>
                <a href="/update-profile">Edit Profile</a>
            </div>
        </div>
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
</body>
</html>
