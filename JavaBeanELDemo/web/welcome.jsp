<%-- 
    Document   : welcome
    Created on : Aug 10, 2018, 1:59:42 PM
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
        <jsp:useBean id="std" class="bean.Student" scope="session"/>
        
        <jsp:setProperty name="std" param="stdId" property="stdId"/>
        <jsp:setProperty name="std" param="stdName" property="stdName"/>
        <jsp:setProperty name="std" param="stdAddress" property="stdAddress"/>
        <jsp:setProperty name="std" param="stdAge" property="stdAge"/>
        
    <center>
        <h2>Student Details after successful registration</h2>
        Student ID: ${std.stdId}<br>
        Student Name: ${std.stdName}<br>
        Student Address: ${std.stdAddress}<br>
        Student Name: ${std.stdAge}
    </center>
    </body>
</html>
