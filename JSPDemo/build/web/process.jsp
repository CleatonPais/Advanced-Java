<%-- 
    Document   : process
    Created on : Aug 9, 2018, 3:23:51 PM
    Author     : Cleaton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="myError"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int num1, num2;
            num1 = Integer.parseInt(request.getParameter("txt1"));
            num2 = Integer.parseInt(request.getParameter("txt2"));
            int div = num1/num2;
            out.println("Division of "+num1+" by "+num2+" is "+div);
        %>
    </body>
</html>
