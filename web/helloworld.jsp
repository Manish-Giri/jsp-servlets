<%--
  Created by IntelliJ IDEA.
  User: manishgiri
  Date: 7/10/17
  Time: 12:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello JSP</title>
</head>
<body>
<h3>Hello World of Java</h3>
<p>The time on the server is <%= new java.util.Date() %></p>
<p>75+69 = <%= 75 + 69 %></p>

<%
    for(int i = 0; i < 5; i++) {
        out.println("Hello " + i + "<br>");
    }
%>

<%!
    // JSP Declaration (Method)
    String makeItLower(String data) {
        return data.toLowerCase();
    }
%>

<p>Lowercase text = <%= makeItLower("HELLO WORLD AGAIN")%></p>


</body>
</html>
