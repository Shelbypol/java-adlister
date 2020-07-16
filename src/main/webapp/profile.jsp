
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>User Profile</title>
</head>
<body>

<%@include file="partials/admin-nav.jsp" %>


<h1>Welcome, ${param.username} </h1>
<form action="/login.jsp" method="get">
    <button type="submit">Back to login page</button>
</form>


</body>
</html>
