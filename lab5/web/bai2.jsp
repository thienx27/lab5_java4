<%-- 
    Document   : bai2
    Created on : Jul 31, 2019, 1:13:13 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calculator</h1>
        <form>
            so1:<input name="txtNum1" value="${param.txtNum1}"/><br/>
            so2:<input name="txtNum2" value="${param.txtNum2}"/><br/>
            <input type="submit" value="cong"/>
            <h1>Tổng 2 số là :${param.txtNum1 + param.txtNum2}</h1>
        </form>
    </body>
</html>
