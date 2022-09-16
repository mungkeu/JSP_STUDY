<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 1:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
<%
    String[] movieList = {"타이타닉", "시네마 천국", "혹성 탈출", "킹콩"};
    pageContext.setAttribute("movieList", movieList);
%>
<ul>
<c:forEach var="movie" items="${movieList}" varStatus="status">
    <c:choose>
        <c:when test="${status.first}">
            <li style="font-weight: bold;color:red;">${movie}</li>
        </c:when>
        <c:otherwise>
            <li>${movie}</li>
        </c:otherwise>
    </c:choose>
</c:forEach>
</ul>
</body>
</html>
