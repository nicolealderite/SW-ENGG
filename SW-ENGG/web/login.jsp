<%-- 
    Document   : login.jsp
    Created on : Oct 11, 2017, 10:09:06 AM
    Author     : Christian
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login to SYSTECH Corp</title>
    </head>
    <body>
        <div>
            <form action="loginservlet" method="POST">
                Email: <input name="email" type="email" placeholder="example123@domain.com" required><br>
                First Name: <input name="firstname" type="text" placeholder="your first name" required><br>
                Last Name: <input name="lastname" type="text" placeholder="your last name" required><br>
                Password: <input name="password" type="password" placeholder="your password" required><br>
                Confirm Password: <input name="confirm" type="password" placeholder="your password" required><br>
                <input type="submit" value="Login">
            </form>
        </div>
        
    </body>
    <script>
    </script>
</html>
