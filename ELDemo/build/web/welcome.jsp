<%-- 
    Document   : welcome
    Created on : Aug 10, 2018, 1:36:35 PM
    Author     : Cleaton
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>You have entered : ${param.txtName}</h1>
        <c:set var="text" value="${param.txtName}" scope="request"/>
        <%
            session.setAttribute("yourText",(String)request.getParameter("txtName"));
        %>
        <a href="output.jsp">Get your text from Session object</a>
    </body>
</html>
