<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 3:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
<c:if test="${param.color==1}">
  <span style="color: red;">빨강</span>
</c:if>
<c:if test="${param.color==2}">
  <span style="color: green">초록</span>
</c:if>
<c:if test="${param.color==3}">
  <span style="color: blue;">파랑</span>
</c:if>
</body>
</html>
