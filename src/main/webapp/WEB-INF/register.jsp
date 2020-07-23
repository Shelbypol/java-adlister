
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Register</h1>
    <form action="/register" method="POST">
        <div class="form-group">
            <label for="username">Enter Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="email">Enter Email</label>
            <input id="email" name="email" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Enter Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Register">
    </form>
</div>

</body>
</html>
