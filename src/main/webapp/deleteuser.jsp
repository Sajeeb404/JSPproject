<%@ page import="com.example.CRUD.dao.UserDao"%>

<%
String id = request.getParameter("id");
int i = UserDao.delete(Integer.parseInt(id));
if(i>0){
response.sendRedirect("viewUsers.jsp");
}
%>
