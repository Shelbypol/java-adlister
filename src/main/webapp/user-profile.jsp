<%--
  Created by IntelliJ IDEA.
  User: shelby
  Date: 7/14/20
  Time: 2:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>user profile</title>
</head>
<body>
<h1> your profile</h1>

<%--same things --%>
<h1>Hi, <%=request.getParameter("username")%></h1>
<h1>Hi, ${param.username}</h1> <%-- Expression lang --%>
<%--end same things --%>

<%--See  i have access to--%>
<h3>${paramValues.toString}</h3>

</body>
</html>
