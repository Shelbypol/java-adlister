<%--
  Created by IntelliJ IDEA.
  User: shelby
  Date: 7/14/20
  Time: 1:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String firstName = request.getParameter("firstname"); %>

<%! String lastName = "Polasek"; %>

<%--<% if(firstName.equals("shelby")){--%>
<%-- response.sendRedirect("/index.jsp");--%>
<%--}--%>
<%--%>--%>

<html>
<head>
    <title>Home Page</title>
</head>
<body>
<h3>What would you like to do?</h3>

<hr>

<%-- Profile --%>
<h3>Go to profile</h3>
<form action="/user-profile.jsp" method="get">
    <input type="hidden" id="username" name="username" value="Shelby">
    <button type="submit">View Profile</button>
</form>

<hr>

<%-- todos page --%>
<h3>Add a todo</h3>
<form action="/todo.jsp" method ="post">
    <input type="text" id="item" name="item">
    <button type="submit">Add to list</button>
</form>

<%-- Include NavBar --%>
<%@ include file="partials/navbar.jsp" %>

<h1>Hello, <%=firstName%> <%=lastName%> </h1>

<%-- Include about me --%>
<%@include file="partials/aboutme.jsp"%>

<%-- Include Footer --%>
<%@ include file="partials/footer.jsp" %>


<h1>Welcome To The Site!</h1>
<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"name" parameter: <%= request.getParameter("name") %></p>
<p>"method" attribute: <%= request.getMethod() %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>

</body>
</html>
