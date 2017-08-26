<%--
  Created by IntelliJ IDEA.
  User: manishgiri
  Date: 7/10/17
  Time: 1:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Confirmation</title>
</head>
<body>
    <h3>The student is confirmed: ${param.first} ${param.last}</h3>

    <%--<p>The student's country is: ${param.country}</p>--%>
    <p>Favorite Languages: </p>
    <ul>
        <%
            String[] languages = request.getParameterValues("lang");

            for(String lang: languages) {
                out.println("<li>" + lang.toUpperCase() + "</li>");
            }
        %>
    </ul>


</body>
</html>
