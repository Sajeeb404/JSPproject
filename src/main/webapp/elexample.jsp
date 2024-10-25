<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h1>Welcome to the EL Example</h1>

    <!-- Using Expression Language -->
    <p>Welcome ${param.name}</p>




<%
String name = request.getParameter("name");
 session.setAttribute("user", name);

 Cookie ck = new Cookie("cc", "Abishek");
 response.addCookie(ck);

%>

<a href="ss.jsp">session</a>

</body>
</html>
