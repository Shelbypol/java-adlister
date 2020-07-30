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
<h1>${param.category.toString()}</h1>

<c:forEach var="ad" items="${ads}">
    <div class="row">
        <div class="card col-md-3 border">
            <div class="card-body">
                <h5 class="card-title">${ad.title}</h5>
                <p class="card-text">${ad.description}</p>
                <a href="#" class="card-link">Save <3</a>
                <a href="#" class="card-link">Request Contact</a>
            </div>
        </div>
    </div>
</c:forEach>


<%--<c:choose>--%>
<%--    <c:when test="${param.category} == ${param.category}">--%>
<%--        <c:forEach var="ad" items="${ads}">--%>
<%--         <h5>${ad.title}</h5>--%>
<%--            <p>${ad.description}</p>--%>
<%--        </c:forEach>--%>
<%--    </c:when>--%>
<%--    <c:otherwise>--%>
<%--        ${"No Match!"}--%>
<%--    </c:otherwise>--%>
<%--</c:choose>--%>

</body>
</html>
