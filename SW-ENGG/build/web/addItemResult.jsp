<%-- 
    Document   : loginsuccess
    Created on : Oct 11, 2017, 10:34:35 AM
    Author     : Christian
--%>

<%@page import="christianalderite.facility"%>
<%@page import="christianalderite.item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="christianalderite.rentable"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to SYSTECH Corp!</title>
        <a href="addItem.jsp"> Add New Item / Facility </a><br>
        <a href="viewInventory.jsp"> Inventory </a><br>
        <a href="index.jsp"> Home </a><br>
    </head>
    <body>
        <%
            rentable item = (rentable)request.getAttribute("newitem");
            out.println(item.display());

            %>
    </body>
</html>
