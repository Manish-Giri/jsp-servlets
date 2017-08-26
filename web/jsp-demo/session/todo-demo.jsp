<%--
  Created by IntelliJ IDEA.
  User: manishgiri
  Date: 8/25/17
  Time: 7:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<html>
<head>
    <title>Session Demo</title>
</head>
<body>
<form action="todo-demo.jsp">
    Add new item: <input type="text" name="item">
    <input type="submit" value="submit">
</form>

<br><br>
<p>Item entered: <%= request.getParameter("item")%></p>

<!-- get todo items and add to list -->
<%
    List<String> items = (List<String>) session.getAttribute("todoList");

    // create new list if one doesn't exist
    if(items == null) {
        items = new ArrayList<>();
        // add this list to session object
        session.setAttribute("todoList", items);
    }

    // check if there is form data to add in list
    String data = request.getParameter("item");
    if(data != null) {
        // add to list
        items.add(data);
    }

%>

<hr>
<p>Your todo items - </p>
<ol>
    <%
        // add list items
        if(items != null) {
            for(String s: items) {
                out.println("<li>" + s + "</li>");
            }
        }
    %>
</ol>

</body>
</html>
