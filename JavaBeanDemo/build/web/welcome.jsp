<%-- 
    Document   : welcome
    Created on : Aug 9, 2018, 2:04:03 PM
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
        <jsp:useBean id="std" class="bean.Student" scope="session"/>
        
        <jsp:setProperty name="std" param="stdId" property="stdId"/>
        <jsp:setProperty name="std" param="stdName" property="stdName"/>
        <jsp:setProperty name="std" param="stdAddress" property="stdAddress"/>
        <jsp:setProperty name="std" param="age" property="age"/>
        
        <h1>Student Detail after successful registration</h1>
        Student ID : <jsp:getProperty name="std" property="stdId"/><br/>
        Student Name : <jsp:getProperty name="std" property="stdName"/><br/>
        Student Address : <jsp:getProperty name="std" property="stdAddress"/><br/>
        Student Age : <jsp:getProperty name="std" property="age"/>
    </center>
    </body>
</html>
