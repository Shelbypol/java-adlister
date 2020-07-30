<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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

<div class="container">
    <h1>Create a new Ad</h1>
    <form action="/ads/create" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control"></textarea>
        </div>
        <div class="form-group">
            <label class="category" for="category">Category</label>
            <select multiple class="dropdown" name="category" id="category">
                <option value="1" selected>For Sale</option>
                <option value="2">Community</option>
                <option value="3">Housing</option>
                <option value="4">Services</option>
                <option value="5">Jobs</option>
            </select>
        </div>
<%--        <div class="file-field">--%>
<%--            <div class="btn btn-primary btn-sm float-right">--%>
<%--                <span>Choose file</span>--%>
<%--                <input type="file">--%>
<%--            </div>--%>
<%--            <div class="file-path-wrapper">--%>
<%--                <input class="file" size="50" type="text" name="adImg" placeholder="Upload your file">--%>
<%--            </div>--%>
<%--        </div>--%>
        <input type="submit" class="btn btn-block btn-primary">
    </form>


</div>
</body>
</html>