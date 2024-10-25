

 <h1 class="text-center">Registration Form</h1>
    <div class="d-flex justify-content-center">

            <form action="adduser.jsp" method="post" class="border p-4 rounded shadow">
                <table class="table">
                    <tr>
                        <td><label for="name">Name:</label></td>
                        <td><input type="text" name="name" class="form-control" id="name" required/></td>
                    </tr>
                    <tr>
                        <td><label for="password">Password:</label></td>
                        <td><input type="password" name="password" class="form-control" id="password" required/></td>
                    </tr>
                    <tr>
                        <td><label for="email">Email:</label></td>
                        <td><input type="email" name="email" class="form-control" id="email" required/></td>
                    </tr>
                    <tr>
                        <td>Sex:</td>
                        <td>
                            <div class="form-check">
                                <input type="radio" name="gender" value="male" class="form-check-input" id="male" required/>
                                <label for="male" class="form-check-label">Male</label>
                            </div>
                            <div class="form-check">
                                <input type="radio" name="gender" value="female" class="form-check-input" id="female" required/>
                                <label for="female" class="form-check-label">Female</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="country">Country:</label></td>
                        <td>
                            <select name="country" class="form-control" id="country" required>
                                <option>India</option>
                                <option>Pakistan</option>
                                <option>Afghanistan</option>
                                <option>Burma</option>
                                <option>Other</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="text-center"><input type="submit" value="Registration" class="btn btn-primary"/></td>
                    </tr>
                </table>
            </form>
        </div>