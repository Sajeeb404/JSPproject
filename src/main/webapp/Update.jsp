
<%@ page import ="com.example.CRUD.dao.UserDao"%>
<jsp:useBean id="u" class="com.example.CRUD.model.UserModel"></jsp:useBean>
<jsp:setProperty property="*" name ="u"/>

<%
int i = UserDao.updates(u);
if(i>0){
response.sendRedirect("viewUsers.jsp");
}else{
response.sendRedirect("error-Update.jsp");
}
%>