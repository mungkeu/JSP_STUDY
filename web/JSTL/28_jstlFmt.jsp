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
<fmt:requestEncoding value="UTF-8"></fmt:requestEncoding> <!--request.setCharacterEncoding("UTF-8");-->
이름 : <c:out value="${param.name}"></c:out> <!--request.getParameter("name")-->
</body>
</html>
