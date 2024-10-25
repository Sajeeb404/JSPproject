




<jsp:useBean id="u" class="com.example.User" scope="session" />

Record: <br>
Name: <jsp:getProperty property="name" name="u" /><br>
Password: <jsp:getProperty property="password" name="u" /><br>
Email: <jsp:getProperty property="email" name="u" /><br>



