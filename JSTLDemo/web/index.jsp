<%-- 
    Document   : index
    Created on : Aug 10, 2018, 1:17:27 PM
    Author     : Cleaton
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Format Number:<br>
        <c:set var="balance" scope="session" value="124500.50"/>
        <p>
            Formatted Number 1 : <fmt:formatNumber value="${balance}" type="currency"/>
        </p>
        <p>
            Formatted Number 2 : <fmt:formatNumber value="${balance}" type="number" maxIntegerDigits="3"/>
        </p>
    </body>
</html>
