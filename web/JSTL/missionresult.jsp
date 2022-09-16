<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/17
  Time: 6:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>로그인 결과</title>
</head>
<body>
${param.userid}님
<c:choose>
    <c:when test="${param.admin == 1}">사용자로 </c:when>
    <c:otherwise>관리자로 </c:otherwise>
</c:choose>
로그인하셨습니다.
</body>
</html>
