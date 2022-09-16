<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 12:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
<c:choose>
    <c:when test="${param.fruit==1}">
        <span style="color:red;">사과</span>
    </c:when>
    <c:when test="${param.fruit==2}">
        <span style="color:green;">메론</span>
    </c:when>
    <c:when test="${param.fruit==3}">
        <span style="color:yellow;">바나나</span>
    </c:when>
</c:choose>
</body>
</html>
