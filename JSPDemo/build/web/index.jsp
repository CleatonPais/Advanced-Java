<%-- 
    Document   : index
    Created on : Aug 9, 2018, 3:02:46 PM
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
        <%@include file="header.jsp" %>
        <!-- 
            HTML comment 
        -->
        <a href="calculate.jsp">Calculate</a>
        <%-- 
            JSP comment 
        --%>
        <%!int var=10;%>
        <%
            var++;
        %>
        <h1><%=var%></h1>
        <h2><%=10*2%></h2>
        <h3><%=new java.util.Date()%></h3>
        <% 
            out.println("Good Afternoon");
        %>
        
    </body>
</html>
