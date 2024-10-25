<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mixed JSP Tags Example</title>
</head>
<body>


<%@ page import="java.util.Date" %>
    <h1>Welcome to JSP! </h1>

Today is <%= new Date()%>
    <%
   out.println("Welcome "+request.getParameter("uname"));
   String driver = config.getInitParameter("dname");
   out.println("driver name is ="+driver);

   String apps = application.getInitParameter("app");
   out.print("This is applicaiton name = "+ apps);

   session.setAttribute("user", driver);


    %>
   <a href="second.jsp"> second </a>

  <%= request.getParameter("ne")%>




</body>
</html>
