<%-- 
    Document   : bai1
    Created on : Jul 31, 2019, 1:15:36 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Load data</h1>
      
       <sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                                           url="jdbc:sqlserver://127.0.0.1:1433;databaseName=Login1"
                                           user="sa" password="123"
                                           var="con"/>
     <sql:query dataSource="${con}" var="rs">
     select * from USERS
        </sql:query>
        <table border="1">
            <tr>
                <td>no.</td><td>Username</td><td>Password</td><td>Lastname</td>
            </tr>
            <c:set var="count" value="0"/>
            <c:forEach var="dong" items="${rs.rows}">
                <tr>
                    <c:set var="count" value="${count+1}"/>
                    <td>@{count}</td>
                    <td>@{dong.Username}</td>
                    <td>@{dong.Password}</td>
                    <td>@{dong.Lastname}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
