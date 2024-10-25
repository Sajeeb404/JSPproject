
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@ include file="header.jsp"%>



<%@ page import="com.example.CRUD.dao.UserDao, com.example.CRUD.model.UserModel"%>


<%

String id = request.getParameter("id");

UserModel user = UserDao.getUserById(Integer.parseInt(id));



%>


 <h1 class="text-center">Update Form</h1>
    <div class="d-flex justify-content-center">

            <form action="Update.jsp" method="post" class="border p-4 rounded shadow">
                <table class="table">

                    <tr>

                        <td><input type="hidden" name="id" class="form-control" id="id" value="<%=user.getId() %>"/></td>
                    </tr>
                    <tr>
                        <td><label for="name">Name:</label></td>
                        <td><input type="text" name="name" class="form-control" id="name" value="<%=user.getName()%>"/></td>
                    </tr>
                    <tr>
                        <td><label for="password">Password:</label></td>
                        <td><input type="password" name="password" class="form-control" id="password" value="<%=user.getPassword()%>"/></td>
                    </tr>
                    <tr>
                        <td><label for="email">Email:</label></td>
                        <td><input type="email" name="email" class="form-control" id="email" value="<%=user.getEmail()%>"/></td>
                    </tr>
                    <tr>
                        <td>Sex:</td>
                        <td>
                            <div class="form-check">
                                <input type="radio" name="gender" value="male" class="form-check-input" id="male" required/>
                                <label for="male" class="form-check-label">Male</label>
                            </div>
                            <div class="form-check">
                                <input type="radio" name="gender" value="female" class="form-check-input" id="female" required/>
                                <label for="female" class="form-check-label">Female</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="country">Country:</label></td>
                        <td>
                            <select name="country" class="form-control" id="country" required>
                                <option>India</option>
                                <option>Pakistan</option>
                                <option>Afghanistan</option>
                                <option>Burma</option>
                                <option>Other</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="text-center"><input type="submit" value="Registration" class="btn btn-primary"/></td>
                    </tr>
                </table>
            </form>
        </div>


<%@ include file="footer.jsp"%>
