<%--
  Created by IntelliJ IDEA.
  User: manishgiri
  Date: 7/10/17
  Time: 1:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Built-in Objects</title>
</head>
<body>

<h3>Request user agent: <%= request.getHeader("User-Agent")%></h3>

<h3>Request language: <%= request.getLocale() %></h3>
</body>
</html>
