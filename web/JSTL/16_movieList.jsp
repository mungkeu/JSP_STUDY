<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 1:23 PM
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
<c:forEach var="cnt" begin="1" end="10" varStatus="status">
    ${cnt} <c:if test="${not status.last}">, </c:if>
</c:forEach>
<table border="1" style="width:100%; text-align: center;">
    <tr><th>index</th><th>count</th><th>cnt</th></tr>
    <c:forEach var="cnt" begin="7" end="10" varStatus="status">
        <tr>
            <td>${status.index}</td>
            <td>${status.count}</td>
            <td>${cnt}<br></td>
        </tr>
    </c:forEach>
</table>
<br><br>
<table border="1" style="width:100%; text-align: center;">
    <tr><th>index</th><th>count</th><th>cnt</th></tr>
    <c:forEach var="cnt" begin="1" end="10" varStatus="status" step="2">
        <tr>
            <td>${status.index}</td>
            <td>${status.count}</td>
            <td>${cnt}<br></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
