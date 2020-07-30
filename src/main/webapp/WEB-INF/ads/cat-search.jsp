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
<h1>"${param.category.toString()}"</h1>

<%--  need to make conditionals that display what user selects  --%>
<c:choose>
    <c:when test="${param.category} == ${param.category}">
        <c:forEach var="ad" items="${ad}">
         <h5>${ad.title}</h5>
            <p>${ad.description}</p>
        </c:forEach>
    </c:when>
    <c:otherwise>
        ${"No Match!"}
    </c:otherwise>
</c:choose>

</body>
</html>
