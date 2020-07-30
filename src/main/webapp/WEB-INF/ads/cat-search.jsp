<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ad Search</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
    <style>
        <%@include file="/css/adIndexCss.css" %>
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<jsp:include page="/WEB-INF/partials/sideNav.jsp"/>
<h1>is this working</h1>

<%--  need to make conditionals that display what user selects  --%>

<%--    <c:when test="${param.category == param.category}">--%>
<%--        <div class="hero-section">--%>
<%--            <div class="card-grid">--%>
<%--                <c:forEach var="cat" items="${category}">--%>
<%--                    <a href="${pageContext.request.contextPath}/ads/ad?ads_id=${cat.id}" class="card">--%>
<%--&lt;%&ndash;                        <div class="card__background" style="background-image: url(/img/dad.png)"></div>&ndash;%&gt;--%>
<%--                        <div class="card__content">--%>
<%--                            <p class="card__category">Category</p>--%>
<%--                            <h3 class="card__heading">${cat.title}</h3>--%>
<%--                            <p>${cat.description}</p>--%>
<%--                        </div>--%>
<%--                    </a>--%>
<%--                </c:forEach>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </c:when>--%>
<%--    <c:otherwise>--%>
<%--        ${"No Match!"}--%>
<%--    </c:otherwise>--%>
<%--</c:choose>--%>



<%--    <c:forEach var="ad" items="${ads}">--%>
<%--        <div class="col-md-3">--%>
<%--            <h2>${ad.title}</h2>--%>
<%--            <p>${ad.description}</p>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>

</body>
</html>
