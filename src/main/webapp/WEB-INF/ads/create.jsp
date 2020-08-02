<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
    <style>
        <%@include file="/css/adIndexCss.css" %>
        <%@include file="/css/createAd.css" %>
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<jsp:include page="/WEB-INF/partials/sideNav.jsp"/>

<div class="container createContainer">
    <h1>Create a new Ad</h1>
    <hr>
    <br>
    <form action="/create" method="post">
        <div class="col-md-6">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <br>
        <div class="col-md-6">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control"></textarea>
        </div>
        <br>
        <hr>
        <div class="col-md-6 dropdown">

<%--            <form action="/products/update" method="post" class="d-inline ml-2">--%>
<%--                <input type="hidden" name="product_id" value="${product.id}">--%>
<%--                <input class="btn btn-success btn-sm" name="quantityBtn" type="submit" value="+1">--%>
<%--            </form>--%>

            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="customRadioInline1" name="category" class="custom-control-input">
                <label class="custom-control-label" for="customRadioInline1">For Sale</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="customRadioInline2" name="category" class="custom-control-input">
                <label class="custom-control-label" for="customRadioInline2">Community</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="customRadioInline3" name="category" class="custom-control-input">
                <label class="custom-control-label" for="customRadioInline3">Housing</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="customRadioInline4" name="category" class="custom-control-input">
                <label class="custom-control-label" for="customRadioInline4">Services</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="customRadioInline5" name="category" class="custom-control-input">
                <label class="custom-control-label" for="customRadioInline5">Jobs</label>
            </div>


        </div>
        <div class="col-md-6">
            <input type="submit" class="btn btn-block btn-dark">
        </div>
    </form>
</div>
</body>
</html>

<%--    <button type="button" aria-labelledby="dropdownMenu2"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
<%--       Category--%>
<%--    </button>--%>
<%--            <label for="category"></label>--%>
<%--            <select class="dropdown-menu" name="category" id="category" aria-labelledby="dropdownMenu2">--%>
<%--                <option class="dropdown-item" value="2" >For Sale</option>--%>
<%--                <option class="dropdown-item" value="3">Community</option>--%>
<%--                <option class="dropdown-item" value="4">Housing</option>--%>
<%--                <option class="dropdown-item" value="5">Services</option>--%>
<%--                <option class="dropdown-item" value="6">Jobs</option>--%>
<%--            </select>--%>
