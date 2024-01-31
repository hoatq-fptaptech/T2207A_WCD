<%@ page import="wcd.jpa.entities.Classes" %>
<%@ page import="java.util.List" %>
<%@ page import="wcd.jpa.entities.Subject" %><%--
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
        <h1>Add Student Demo</h1>
        <!--  Table students -->
        <div class="row">
            <div class="col-6">
                <form method="post" action="create-student">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Full name</label>
                        <input type="text" name="name" class="form-control" aria-describedby="emailHelp"/>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Address</label>
                        <input type="text" name="address" class="form-control" aria-describedby="emailHelp"/>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Class</label>
                        <select name="class_id" class="form-control">
                            <% for (Classes c: (List<Classes>)request.getAttribute("classesList")){ %>
                            <option value="<%= c.getId()%>"><%= c.getName() %></option>
                            <% } %>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Subject</label>
                        <% for (Subject s: (List<Subject>)request.getAttribute("subjectList")){ %>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input name="subject_id[]" class="form-check-input" type="checkbox" value="<%= s.getId() %>">
                                    <%= s.getName() %>
                                </label>
                            </div>
                        <% } %>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>


</body>
</html>
