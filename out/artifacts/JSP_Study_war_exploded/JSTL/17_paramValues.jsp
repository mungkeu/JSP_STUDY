<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 1:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
당신이 선택한 항목입니다.<hr>
<c:forEach var="item" items="${paramValues.item}" varStatus="status">
    ${item}
    <c:if test="${not status.last}">, </c:if>
</c:forEach>
</body>
</html>
