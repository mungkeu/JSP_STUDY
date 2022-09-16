<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 2:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL $ JSTL</title>
</head>
<body>
<c:url value="/images/pic.jpg" var="data"/>
<h3>${data}</h3> <!-- 경로와 해당 파일이름을 출력.-->
<img src="${data}" width="150" height="150" alt="">
</body>
</html>
