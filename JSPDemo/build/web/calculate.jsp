<%-- 
    Document   : calculate
    Created on : Aug 9, 2018, 3:17:14 PM
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
        <jsp:include page="header.jsp"/>
    <center>
        <h2>Enter two numbers for division</h2>
        <form action="process.jsp" method="post">
            Number 1: <input type="text" name="txt1" value="Enter 1st number"/><br><br>
            Number 2: <input type="text" name="txt2" value="Enter 2nd number"/><br><br>
            <input type="submit" value="Divide"/>            
        </form>
    </center>
    </body>
</html>
