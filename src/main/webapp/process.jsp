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

<div class="container mt-5">


    <%@ page errorPage="error.jsp"%>

    <%
    String num1 = request.getParameter("n1");
    String num2 = request.getParameter("n2");

    int a = Integer.parseInt(num1);
    int b = Integer.parseInt(num2);

    double c = a/b;

    out.print("Division of numbers is: "+ c);





    %>




welcome ${param.n1}


</div>

<%@ include file="footer.jsp" %>

</body>
</html>
