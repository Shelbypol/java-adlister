<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<jsp:include page="/WEB-INF/partials/sideNav.jsp" />

<div class="container">
    <h1>All ads</h1>

<%--    FOR DISPLAYING ADS --%>
<%--    <c:forEach var="ad" items="${ads}">--%>
<%--        <div class="col-md-3">--%>
<%--            <h2>${ad.title}</h2>--%>
<%--            <p>${ad.description}</p>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>

    <%--  need to make conditionals that display what user selects  --%>
    <%--  need to make conditionals that display what user selects  --%>
    <c:choose>
        <c:when test="${param.category == null}">

            <c:forEach var="ad" items="${ads}">
                <p>display cat cards</p>
            </c:forEach>

        </c:when>
        <c:when test="${param.category == param.category}">
            <div class="hero-section">
                <div class="card-grid">
                    <c:forEach var="cat" items="${category}">
                        <a href="/ads/ad?daddy_id=${cat.id}" class="card">
                            <div class="card__background" style="background-image: url(/img/dad.png)"></div>
                            <div class="card__content">
                                <p class="card__category">Category</p>
                                <h3 class="card__heading">${cat.title}</h3>
                                <p>${cat.description}</p>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </c:when>
        <c:otherwise>
            ${"No Match!"}
        </c:otherwise>
    </c:choose>

</div>

</body>
</html>
