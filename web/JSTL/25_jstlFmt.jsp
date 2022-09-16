<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/17
  Time: 5:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>EL과 JSTL</title>
</head>
<body>
<!-- fmt:setTimeZone 태그는 특정 지역의 타임존을 설정하는 태그이다.-->
<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
<p>
default: <c:out value="${now}"></c:out><br>
Korea KST : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate><br>

<fmt:timeZone value="GMT">
Swiss GMT : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate><br>
</fmt:timeZone>

<fmt:timeZone value="GMT-8">
NewYork GMT-8 : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate><br>
</fmt:timeZone>
</p>
</body>
</html>
