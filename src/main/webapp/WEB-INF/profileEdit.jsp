<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Profile" />
    </jsp:include>
</head>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<jsp:include page="/WEB-INF/partials/sideNav.jsp" />

<body>
<div class="container register-container">
    <h2>Update, ${sessionScope.user.username}</h2>
    <form action="/update-profile" method="post" class="form-control-sm">
        <div class="form-group form-group-sm">
            <label class="username" for="username">Username</label>
            <input id="username" name="username" class="form-control input-sm" type="text" required>
        </div>
        <div class="form-group form-group-sm">
            <label class="email" for="email">Email</label>
            <input id="email" name="email" class="form-control input-sm" type="text" required>
        </div>
        <input class="input-sm" type="hidden" id="id" name="id" value="${sessionScope.user.id}">
        <input type="submit" class="btn btn-dark btn-block">
    </form>
</div>
</body>
</html>
