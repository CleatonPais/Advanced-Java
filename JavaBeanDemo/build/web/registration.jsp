<%-- 
    Document   : registration
    Created on : Aug 9, 2018, 2:17:58 PM
    Author     : Cleaton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Sign Up Here...</h1>
        <form action="welcome.jsp" method="post">
            <table>
                <tr><td>Student ID:</td><td><input type="number" name="stdId"/></td></tr>
                <tr><td>Student Name:</td><td><input type="text" name="stdName"/></td></tr>
                <tr><td>Student Address:</td><td><input type="text" name="stdAddress"/></td></tr>
                <tr><td>Student Age:</td><td><input type="number" name="age"/></td></tr>
                <tr><td colspan="2"><input type="submit" value="Signup"</td></tr>
            </table>
        </form>        
    </center>
    </body>
</html>
