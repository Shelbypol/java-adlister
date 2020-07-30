<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ind. Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<jsp:include page="/WEB-INF/partials/sideNav.jsp" />
<body>
<div id="container">
    <div class="product-details">>
        <p class="information"><c:out value="${ad.title}"/></p>
        <p class="information"><c:out value="${ad.description}"/></p>
        <!-- 		Control -->
        <div class="control">
        </div>
    </div>

</div>
<p><a href="/edit-delete?ad_id=${ad.id}">Edit or delete (d)Ad</a></p>
</body>
</html>
