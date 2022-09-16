<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/17
  Time: 4:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>EL과 JSTL</title>
</head>
<body>
<c:set var="age" value="30" scope="page"></c:set>
나이:<c:out value="${age}">10</c:out> <br> <!--10을 무시하고 변수인 30 출력-->

<c:remove var="age" scope="page"></c:remove> <!-- age 변수 제거-->
나이:<c:out value="${age}">10</c:out> <br> <!-- age 변수가 제거 되었으므로 디폴트 값인 10이 출력-->

<c:catch var="errmsg">
    예외 발생 전 <br>
    <%= 1/0 %><br> <!-- 에러 발생 -->
    예외 발생 후 <br>
</c:catch>

<c:out value="${errmsg}"></c:out> <!-- 에러 메시지 출력 -->
</body>
</html>
