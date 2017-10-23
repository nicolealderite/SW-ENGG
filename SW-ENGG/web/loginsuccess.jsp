<%-- 
    Document   : loginsuccess
    Created on : Oct 11, 2017, 10:34:35 AM
    Author     : Christian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="christianalderite.loginmodel"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to SYSTECH Corp!</title>
    </head>
    <body>
        <%
            loginmodel login =  (loginmodel)request.getAttribute("newuser");
            out.print("Welcome, "+login.getFirstName()+" "+login.getLastName());
        %>
    </body>
</html>
