<%--
  Created by IntelliJ IDEA.
  User: shelby
  Date: 7/14/20
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Todo List</title>
</head>

<body>

<h1>Todos for the day</h1>
<p>
    <%=request.getParameter("item")%>
</p>


</body>
</html>
