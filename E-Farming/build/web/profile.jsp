<%-- 
    Document   : profile
    Created on : Apr 25, 2022, 11:42:31 AM
    Author     : ASUS
--%>

<%@page import="mypackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="./Images/logo.jpeg" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link rel="stylesheet" href="style.css">
        <title>Profile</title>
    </head>
    <body>
        <div class="container text-center text-success mt-5">
            <ul class="list-group">
                <h1 class="text-center text-decoration-underline mb-3 text-secondary">Your Profile</h1>
                <li class="list-group-item fs-5">Welcome </h4>, <%= user.getName()%></li>
                <li class="list-group-item fs-5">Email: <%= user.getEmail()%></li>
                <li class="list-group-item fs-5">Phone: <%= user.getPhone()%></li>
                <li class="list-group-item fs-5">Password: <%= user.getPassword()%></li>
            </ul>
        </div>
    </body>
</html>
