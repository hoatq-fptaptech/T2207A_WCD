<%@ page import="wcd.jpa.entities.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: quanghoatrinh
  Date: 22/01/2024
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Students</title>
    <jsp:include page="/layout/css.jsp"/>
</head>
<body>
    <jsp:include page="/layout/header.jsp"/>
    <div class="container">
        <h1>List Student Demo</h1>
        <!--  Table students -->
        <table class="table">
            <thead>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
            </thead>
            <tbody>
                <% for (Student s : (List<Student>)request.getAttribute("students")){ %>
                    <tr>
                        <td><%= s.id  %></td>
                        <td><%= s.name  %></td>
                        <td><%= s.email  %></td>
                        <td><%= s.address  %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>


</body>
</html>
