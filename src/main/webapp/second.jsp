
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mixed JSP Tags Example</title>
</head>
<body>
    <h1>second to JSP! </h1>


  <%-- <jsp:forward page="welcome.jsp">
    <jsp:param name = "na" value="sajeeb" />
    </jsp:forward>
<jsp:include page="welcome.jsp"/>
--%>

<jsp:include page ="welcome.jsp">
<jsp:param name ="ne" value="rakib"/>
</jsp:include>

    <p> log message has been set.</p>







</body>
</html>
