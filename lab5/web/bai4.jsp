<%-- 
    Document   : bai2
    Created on : Jul 31, 2019, 1:22:24 PM
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
        <form>
            username: <input type="text" name="txtusername" value=""/><br><br>
            password: <input type="password" name="txtpassword" value=""/><br><br>
            Lastname: <input type="text" name="txtlastname" value=""/><br><br>
            <input type="submit" value="insert" name="action"/>
        </form>
        <sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                           url="jdbc:sqlserver://127.0.0.1:1433;databaseName=Login1"
                           user="sa" password="123"
                           var="con"/>
        <c:if test="${not empty param.txtUsername }">
            <sql:update dataSource="${con}">
                insert into USERS (Username,Password,Lastname) values(?,?,?)
                <sql:param value="${param.txtUsername}"/>
                <sql:param value="${param.txtPassword}"/>
                <sql:param value="${param.txtLastname}"/>
            </sql:update>
        </c:if>
        <sql:query dataSource="${con}" var="rs">
            select * from USERS
        </sql:query>
        <table border="1">
            <tr>
                <td>No.</td><td>username</td><td>password</td><td>Lastname</td>
            </tr>
            <c:set var="count" value="0"/>
            <c:forEach var="dong" items="${rs.rows}">
                <tr>
                    <c:set var="count" value="${count+1}"/>
                    <td>@{count}</td>
                    <td>@{dong.username}</td>
                    <td>@{dong.password}</td>
                    <td>@{dong.Lastname}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
