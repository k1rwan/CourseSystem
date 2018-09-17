<%-- 
    Document   : login-fail
    Created on : 2018-9-13, 10:00:55
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="2;url=/CourseSystem"> 
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <%

                String s =(String)request.getAttribute( "warning");
                out.print(s);
            %>
            两秒后自动跳转回主页
        </h1>
    </body>
</html>
