<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 1:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
<c:forTokens var="city" items="서울.인천,대구.부산" delims=",">
    ${city}<br>
</c:forTokens>
<hr>

<c:forTokens var="city" items="서울.인천,대구.부산" delims=",.">
    ${city}<br>
</c:forTokens>
</body>
</html>
