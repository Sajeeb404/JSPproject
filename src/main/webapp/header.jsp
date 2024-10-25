<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">JSP CRUD</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Services</a>
            </li>

            <li class="nav-item">
            <% if(session.getAttribute("userName")==null){%>
                <a class="nav-link" href="registration.jsp">Registration</a>
                <%}%>
            </li>
            <li class="nav-item">
            <%if(session.getAttribute("userName") !=null){%>
                <a class="nav-link" href="calculation.jsp">Calculation</a>
                <%}%>
            </li>

            <li class="nav-item">
            <%if(session.getAttribute("userName") !=null){%>
                <a class="nav-link" href="viewUsers.jsp">View User</a>
                <%}%>
            </li>

            <li class="nav-item">
            <%if(session.getAttribute("userName") != null){%>
                <a class="nav-link" href="second.jsp">Second</a>
                <%}%>
            </li>

            <% if  (session.getAttribute("userName") !=null ){%>

            <li class="nav-item"> <a class = "nav-link" href=el.jsp>EL </a> </li>
            <%}%>

        </ul>

        <ul class="navbar-nav ml-auto">

           <% if(session.getAttribute("userName") == null) { %>
              <a class="nav-link" href="login.jsp">Login</a>
            </li>
            <% } %>

            <li class="nav-item" >

            <% if(session.getAttribute("userName") != null) { %>
              <a class="nav-link" href="logout.jsp">Logout</a>
            </li>
            <% } %>
        </ul>
    </div>
</nav>
