



<%@ page import="com.example.CRUD.dao.UserDao"%>

<%


String uName = request.getParameter("name");
String uPassword = request.getParameter("password");


if (UserDao.isValidate(uName, uPassword)){
session.setAttribute("userName", uName);
response.sendRedirect("user-Profile.jsp");

}else{
response.sendRedirect("error-Password.jsp");
}


%>
