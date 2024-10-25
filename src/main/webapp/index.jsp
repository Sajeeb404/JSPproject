
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="WEB-INF/mytags.tld" prefix="m" %>

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

Current Date and Time is: <m:today/> <br>



<%@ include file="header.jsp"%>
<jsp:useBean id="obj" class="com.example.Calculator" scope="page"/>
<div class="jumbotron text-center">
    <h1 class="display-4">Welcome to My JSP CRUD! <%= obj.cube(10)%></h1>
    <h1 class="display-4">Cube of 4 is: <m:cube number="4"></m:cube></h1>
    <p class="lead">This is a simple home page built with Bootstrap.</p>
    <hr class="my-4">
    <p>Explore the features and enjoy your stay!</p>
    <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
</div>
<%@ include file="footer.jsp"%>
