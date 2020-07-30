<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<jsp:include page="/WEB-INF/partials/sideNav.jsp" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Edit or Delete Your (d)Ad</h1>
<h1>${ad.title}</h1>
<p>
    <c:out value="${ad.title}"/>
    <c:out value="${ad.description}"/>
</p>
<br>

<%--<a href="${templink}" onclick="if (!(confirm('Are you sure you want to delete?'))) return false">Delete</a>--%>
<%--<button type="submit">Delete Post</button>--%>
</body>
</html>
