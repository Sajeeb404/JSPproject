<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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



    <h1 class="text-center">Login</h1>

        <div class="d-flex justify-content-center">
            <form action="profile.jsp" method="post" class="border p-4 rounded shadow">
                <table class="table">
                    <tr>
                        <td><label for="username">Username:</label></td>
                        <td><input type="text" id="username" name="name" class="form-control" required></td>
                    </tr>
                    <tr>
                        <td><label for="password">Password:</label></td>
                        <td><input type="password" id="password" name="password" class="form-control" required></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="text-center">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>

        <div class="text-center mt-3">
            <a href="#">Forgot your password?</a>
        </div>


<%@ include file="footer.jsp" %>

</body>
</html>
