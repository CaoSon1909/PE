<%-- 
    Document   : insert
    Created on : Nov 9, 2020, 11:23:48 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Page</title>
    </head>
    <body>
        <h1>Insert Achievement</h1>
        
        <form action="insertachive">
            Year: <input type="text" name="txtYear" value="" /> <br/>
            Type: <input type="text" name="txtType" value="" /> <br/>
            <input type="hidden" name="idFromSearch" value="${param.id}" />
            <input type="hidden" name="lastSearchValueFromSearch" value="${param.lastSearchValue}" />
            <input type="submit" value="Insert" name="btAction" />
        </form>
    </body>
</html>
