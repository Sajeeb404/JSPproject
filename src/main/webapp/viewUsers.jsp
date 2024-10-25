

<%@ page import="com.example.CRUD.dao.UserDao, com.example.CRUD.model.UserModel, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<%@ include file="header.jsp" %>
<%
List<UserModel> list = UserDao.getAllRecords();

request.setAttribute("reqlist",list);

%>

<h1 class="text-center">Users List</h1>

<div class="text-center">
    <table class="table table-bordered table-striped" style="width: 90%; margin: auto;">
        <thead class="thead-light">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Password</th>
                <th>Email</th>
                <th>Sex</th>
                <th>Country</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${reqlist}" var="u">
                <tr>
                    <td>${u.getId()}</td>
                    <td>${u.getName()}</td>
                    <td>${u.getPassword()}</td>
                    <td>${u.getEmail()}</td>
                    <td>${u.getGender()}</td>
                    <td>${u.getCountry()}</td>
                    <td><a href="editform.jsp?id=${u.getId()}" class="btn btn-warning">Edit</a></td>
                    <td><a href="deleteuser.jsp?id=${u.getId()}" class="btn btn-danger">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<div class="text-center">
    <a href="registration.jsp" class="btn btn-primary">Add New User</a>
</div>




<%@ include file="footer.jsp" %>

</body>
</html>

