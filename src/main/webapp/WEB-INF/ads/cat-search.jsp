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
        <%@include file="/css/catSearch.css" %>
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<jsp:include page="/WEB-INF/partials/sideNav.jsp"/>
<h1>${param.category.toString()}</h1>

<div class="adContainer">

        <c:forEach var="ad" items="${ads}">
<%--            <div class="card border py-2">--%>
<%--                <div class="card-body catCard py-2">--%>
                    <h5 class="card-title center py-2">${ad.title}</h5>
                    <p class="card-text py-2">${ad.description}</p>
                    <br>
                    <hr>
                    <a href="#" class="card-link">Save <3</a>
                    <a href="#" class="card-link">Request Contact</a>
<%--                </div>--%>
<%--            </div>--%>
        </c:forEach>

</div>

</body>
</html>
