<%-- 
    Document   : search
    Created on : Nov 9, 2020, 9:19:39 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    <font color="red">Welcome, ${sessionScope.FULLNAME}</font>
</head>
<body>
    <h1>Search Clubs' Achivement</h1>
    <a href="logout">Log Out</a> <br/>

    <form action="search">
        Search Value: <input type="text" name="txtSearchvalue" value="" /> <br/>
        <input type="submit" value="Search" name="btAction" />
    </form> <br/>

    <c:set var="searchResult" value="${requestScope.SEARCH_RESULT}"/>
    <c:if test="${not empty searchResult}">
        <table border="1">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>ClubName</th>
                    <th>No Of Championship</th>
                    <th>Country</th>
                    <th>Insert Achivement</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="dto" items="${searchResult}">
                    <tr>
                        <td>
                            ${dto.id}
                        </td>
                        <td>
                            ${dto.clubName}
                        </td>
                        <td>
                            ${dto.noOfChampion}
                        </td>
                        <td>
                            ${dto.country}
                        </td>
                        <td>
                            <c:url var="insertLink" value="insert" scope="request">
                                <c:param name="id" value="${dto.id}"/>
                                <c:param name="lastSearchValue" value="${param.txtSearchvalue}"/>
                            </c:url>
                            <a href="${insertLink}">Insert Achievement</a>
                        </td>
                    </tr>
            </c:forEach>
        </tbody>
    </table>

</c:if>
<c:if test="${empty searchResult}">
    <h2>No record is matched!!!</h2>
</c:if>
</body>
</html>
