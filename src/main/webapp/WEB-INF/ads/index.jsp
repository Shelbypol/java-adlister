<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
<style>
    <%@include file="/css/adIndexCss.css" %>
</style>
</head>
<body>
<%--    <%@include file="/css/sidenav.css" %>--%>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<jsp:include page="/WEB-INF/partials/sideNav.jsp" />


<div class="container">

<%--    FOR DISPLAYING ADS --%>
<%--    <c:forEach var="ad" items="${ads}">--%>
<%--        <div class="col-md-3">--%>
<%--            <h2>${ad.title}</h2>--%>
<%--            <p>${ad.description}</p>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>



    <div class="card-deck row">
        <div class="card col-md-4">
            <img class="card-img-top imgCard" src="for-sale.png" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
            </div>
        </div>
        <div class="card col-md-4">
            <img class="card-img-top" src="" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
            </div>
        </div>
        <div class="card col-md-4">
            <img class="card-img-top" src="" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
            </div>
        </div>
    </div>











    <%--  need to make conditionals that display what user selects  --%>
    <%--  need to make conditionals that display what user selects  --%>
<%--    <c:choose>--%>
<%--        <c:when test="${param.category == null}">--%>

<%--            <c:forEach var="ad" items="${ads}">--%>
<%--                <p>display cat cards</p>--%>
<%--            </c:forEach>--%>

<%--        </c:when>--%>
<%--        <c:when test="${param.category == param.category}">--%>
<%--            <div class="hero-section">--%>
<%--                <div class="card-grid">--%>
<%--                    <c:forEach var="cat" items="${category}">--%>
<%--                        <a href="/ads/ad?daddy_id=${cat.id}" class="card">--%>
<%--                            <div class="card__background" style="background-image: url(/img/dad.png)"></div>--%>
<%--                            <div class="card__content">--%>
<%--                                <p class="card__category">Category</p>--%>
<%--                                <h3 class="card__heading">${cat.title}</h3>--%>
<%--                                <p>${cat.description}</p>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </c:forEach>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </c:when>--%>
<%--        <c:otherwise>--%>
<%--            ${"No Match!"}--%>
<%--        </c:otherwise>--%>
<%--    </c:choose>--%>

</div>

</body>
</html>
